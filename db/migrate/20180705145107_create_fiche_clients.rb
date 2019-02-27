class CreateFicheClients < ActiveRecord::Migration[5.1]
  def change
    create_table :fiche_clients do |t|
      t.string :ct_num
      t.string :ct_intitule
      t.string :ct_civilite
      t.string :ct_nom
      t.string :ct_prenom
      t.string :ct_adresse
      t.string :ct_complement
      t.string :ct_codepostal
      t.string :ct_ville
      t.string :ct_pays
      t.string :ct_email
      t.string :ct_telephone
      t.string :ct_telportable
      t.integer :solde_cagnotte

      t.timestamps
    end
  end
end
