class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.integer :kind
      t.integer :contact_method
      t.string :answer_inputs, array: true, default: []
      t.references :interaction, foreign_key: true

      t.timestamps
    end
  end
end
