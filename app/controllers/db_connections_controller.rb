class DbConnectionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_db_connection, only: [:show, :edit, :update, :destroy]

  # GET /db_connections
  # GET /db_connections.json
  def index
    @db_connections = DbConnection.all
  end

  # GET /db_connections/1
  # GET /db_connections/1.json
  def show
  end

  # GET /db_connections/new
  def new
    @db_connection = DbConnection.new
  end

  # GET /db_connections/1/edit
  def edit
  end

  # POST /db_connections
  # POST /db_connections.json
  def create
    @db_connection = DbConnection.new(db_connection_params)

    respond_to do |format|
      if @db_connection.save
        format.html { redirect_to @db_connection, notice: 'Db connection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @db_connection }
      else
        format.html { render action: 'new' }
        format.json { render json: @db_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /db_connections/1
  # PATCH/PUT /db_connections/1.json
  def update
    respond_to do |format|
      if @db_connection.update(db_connection_params)
        format.html { redirect_to @db_connection, notice: 'Db connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @db_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_connections/1
  # DELETE /db_connections/1.json
  def destroy
    @db_connection.destroy
    respond_to do |format|
      format.html { redirect_to db_connections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_connection
      @db_connection = DbConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def db_connection_params
      params[:db_connection]
    end
end
