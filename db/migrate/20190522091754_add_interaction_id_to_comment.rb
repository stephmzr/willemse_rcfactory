class AddInteractionIdToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :interaction_id, :integer
    add_index :comments, :interaction_id
  end
end
