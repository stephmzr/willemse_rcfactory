class AddComplaintStatusToComplaint < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :complaint_status, :integer
  end
end
