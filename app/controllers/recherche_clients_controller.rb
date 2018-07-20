class RechercheClientsController < ApplicationController
  before_action :set_recherche_client, only: [:show, :edit, :update, :destroy]

  # GET /recherche_clients
  def index
    if params[:search].present?
      @recherche_clients = RechercheClient.execute_procedure "p_rechercheclient", params[:search]
    else
      @recherche_clients = []
    end
  end

  # GET /recherche_clients/1
  def show
  end

  # GET /recherche_clients/new
  def new
    @recherche_client = RechercheClient.new
  end

  # GET /recherche_clients/1/edit
  def edit
  end

  # POST /recherche_clients
  def create
    @recherche_client = RechercheClient.new(recherche_client_params)

    if @recherche_client.save
      redirect_to @recherche_client, notice: 'Recherche client was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recherche_clients/1
  def update
    if @recherche_client.update(recherche_client_params)
      redirect_to @recherche_client, notice: 'Recherche client was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recherche_clients/1
  def destroy
    @recherche_client.destroy
    redirect_to recherche_clients_url, notice: 'Recherche client was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recherche_client
      @recherche_client = RechercheClient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recherche_client_params
      params.require(:recherche_client).permit(:ct_num, :ct_type, :ct_classement, :ct_adresse, :ct_codepostal, :ct_ville, :ct_email, :ct_telephone)
    end
end
