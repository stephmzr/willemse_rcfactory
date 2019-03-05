class AddNoteAndModeToComplaint < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :note, :string
    add_column :complaints, :mode, :integer
  end
end
