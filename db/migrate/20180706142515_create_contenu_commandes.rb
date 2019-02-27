class CreateContenuCommandes < ActiveRecord::Migration[5.1]
  def change
    create_table :contenu_commandes do |t|
      t.string :do_piece
      t.string :ar_ref
      t.string :dl_design
      t.integer :dl_qte
      t.float :dl_puttc
      t.integer :remise
      t.float :dl_montantttc
      t.string :ldf
      t.string :code_statut
      t.string :nomenclature

      t.timestamps
    end
  end
end
