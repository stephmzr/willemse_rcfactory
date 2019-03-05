class ContenuCommandesController < ApplicationController
  before_action :set_contenu_commande, only: [:show, :edit, :update, :destroy]

  # GET /contenu_commandes
  def index
    @contenu_commandes = ContenuCommande.all
  end

  # GET /contenu_commandes/1
  def show
  end

  # GET /contenu_commandes/new
  def new
    @contenu_commande = ContenuCommande.new
  end

  # GET /contenu_commandes/1/edit
  def edit
  end

  # POST /contenu_commandes
  def create
    @contenu_commande = ContenuCommande.new(contenu_commande_params)

    if @contenu_commande.save
      redirect_to @contenu_commande, notice: 'Contenu commande was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contenu_commandes/1
  def update
    if @contenu_commande.update(contenu_commande_params)
      redirect_to @contenu_commande, notice: 'Contenu commande was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contenu_commandes/1
  def destroy
    @contenu_commande.destroy
    redirect_to contenu_commandes_url, notice: 'Contenu commande was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenu_commande
      @contenu_commande = ContenuCommande.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contenu_commande_params
      params.require(:contenu_commande).permit(:do_piece, :ar_ref, :dl_design, :dl_qte, :dl_puttc, :remise, :dl_montantttc, :ldf, :code_statut, :nomenclature)
    end
end
