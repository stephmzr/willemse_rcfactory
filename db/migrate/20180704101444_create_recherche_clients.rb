class CreateRechercheClients < ActiveRecord::Migration[5.1]
  def change
    create_table :recherche_clients do |t|
      t.string :ct_num
      t.integer :ct_type
      t.string :ct_classement
      t.string :ct_adresse
      t.string :ct_codepostal
      t.string :ct_ville
      t.string :ct_email
      t.string :ct_telephone

      t.timestamps
    end
  end
end
