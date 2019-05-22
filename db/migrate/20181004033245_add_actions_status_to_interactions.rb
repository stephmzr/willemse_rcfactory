class AddActionsStatusToInteractions < ActiveRecord::Migration[5.1]
  def change
    add_column :interactions, :action_status, :integer
    add_column :interactions, :error_message, :string
  end
end
