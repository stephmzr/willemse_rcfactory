class CreateDetailCommandes < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_commandes do |t|
      t.string :do_piece
      t.string :do_ref
      t.date :do_date
      t.string :ca_num
      t.float :montantttc
      t.float :do_valfrais
      t.string :do_statut
      t.string :urgent
      t.string :point_retrait_relais
      t.string :societe_livraison
      t.string :nom_livraison
      t.string :prenom_livraison
      t.string :email_livraison
      t.string :telephone_livraison
      t.string :adresse_livraison
      t.string :complement_livraison
      t.string :code_postal_livraison
      t.string :ville_livraison
      t.string :pays_livraison
      t.string :code_avantage
      t.float :decagnottage
      t.date :date_expedition
      t.string :numero_tracking
      t.string :lien_tracking
      t.string :code_partenaire
      t.string :motifs_rmbt_recl
      t.string :motifs_retour

      t.timestamps
    end
  end
end
