class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.integer :kind
      t.string :file_fingerprint
      t.references :interaction, foreign_key: true

      t.timestamps
    end
  end
end
