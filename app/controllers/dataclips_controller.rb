class DataclipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dataclip, only: [:show, :edit, :update, :destroy]

  # GET /dataclips
  # GET /dataclips.json
  def index
    @dataclips = Dataclip.all
  end

  # GET /dataclips/1
  # GET /dataclips/1.json
  def show
    require 'sequel'
    @db = Sequel.connect('postgres://postgres:p4ssw0rt@localhost:5432/dataclips_dev')
    p @dataclip.statement
    @dataset = @db[@dataclip.statement]
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
    @dataclip = Dataclip.new(dataclip_params)
    @dataclip.user_id = current_user.id;

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
        format.html { redirect_to @dataclip, notice: 'Dataclip was successfully updated.' }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataclip
      @dataclip = Dataclip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataclip_params
      params.require(:dataclip).permit(:db_connection_id, :title, :statement)
    end
end
