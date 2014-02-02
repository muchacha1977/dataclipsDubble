class DataclipsController < ApplicationController
  before_action :authenticate_user!, except: [:showlink]
  before_action :set_dataclip, only: [:show, :edit, :update, :destroy]

  # GET /dataclips
  # GET /dataclips.json
  def index
    @dataclips = Dataclip.where("user_id = ?", current_user.id)
  end

  # GET /dataclips/1
  # GET /dataclips/1.json
  def show
    redirect_to show_path(:id=>@dataclip.link_token)
  end

  # GET /dataclips/new
  def new
    @dataclip = Dataclip.new
  end

  # GET /dataclips/1/edit
  def edit
  end

  # POST /dataclips
  # POST /dataclips.json
  def create
    return unless dataclip_params
    p dataclip_params
    redirect_to root_path and return unless dataclip_params[:db_connection_id]

    @dataclip = Dataclip.new(dataclip_params)
    @dataclip.user_id = current_user.id;
    @dataclip.link_token = SecureRandom.urlsafe_base64 32

    respond_to do |format|
      if @dataclip.save
        format.html { redirect_to @dataclip, notice: 'Dataclip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dataclip }
      else
        format.html { render action: 'new' }
        format.json { render json: @dataclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dataclips/1
  # PATCH/PUT /dataclips/1.json
  def update
    respond_to do |format|
      if @dataclip.update(dataclip_params)
        format.html { redirect_to show_path(:id=>@dataclip.link_token), notice: 'Dataclip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dataclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dataclips/1
  # DELETE /dataclips/1.json
  def destroy
    @dataclip.destroy
    respond_to do |format|
      format.html { redirect_to dataclips_url }
      format.json { head :no_content }
    end
  end

  def showlink
    begin
      @dataclip = Dataclip.where("link_token = ?", params[:id]).first
      p @dataclip
      @db = Sequel.connect(@dataclip.db_connection.create_connect_string)
      @db.test_connection
      p "Showlink Statement: " + @dataclip.statement
      @dataset = @db[@dataclip.statement]
      @dataset.first
    rescue Exception => exception
      p "Showlink Error: " + exception.message
      flash[:alert] = exception.message
      @dataset = nil;
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataclip
      @dataclip = Dataclip.where("id = ? AND user_id = ?", params[:id], current_user.id).first
      redirect_to dataclips_path unless @dataclip
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataclip_params
      if !DbConnection.where("user_id = ? AND id = ?", current_user.id, params[:dataclip][:db_connection_id]).first
        p "change params"
        params[:dataclip][:db_connection_id] = nil        
      end
      params.require(:dataclip).permit(:db_connection_id, :title, :statement)
    end
end
