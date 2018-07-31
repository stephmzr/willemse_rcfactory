class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.integer :kind
      t.string :md5
      t.string :name

      t.timestamps
    end
  end
end
