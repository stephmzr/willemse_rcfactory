class CreateListeDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :liste_documents do |t|
      t.string :ct_num
      t.string :ca_num
      t.string :s_intitule
      t.string :do_piece
      t.string :do_ref
      t.string :do_coord01
      t.float :do_totalht
      t.date :do_date
      t.string :do_statut
      t.boolean :do_expedie
      t.integer :do_type

      t.timestamps
    end
  end
end
