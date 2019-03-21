class CreateComplaintArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_articles do |t|
      t.string :AR_Ref
      t.string :DL_Design
      t.integer :DL_QTE
      t.float :DL_PUTTC
      t.float :Remise
      t.float :DL_MontantTTC
      t.string :LDF
      t.string :Code_statut
      t.string :Nomenclature
      t.boolean :selected
      t.integer :action_type
      t.float :action_amount
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
