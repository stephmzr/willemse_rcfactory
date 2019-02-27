class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.string :ct_num
      t.string :do_piece
      t.string :do_type
      t.integer :kind
      t.date :date
      t.string :contact
      t.string :object
      t.boolean :status
      t.integer :contact_ct_nb
      t.string :summary

      t.timestamps
    end
  end
end
