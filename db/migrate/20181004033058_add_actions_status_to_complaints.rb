class AddActionsStatusToComplaints < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :action_status, :integer
    add_column :complaints, :error_message, :string
  end
end
