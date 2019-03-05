class ModifyInteractionStatusType < ActiveRecord::Migration[5.1]
  def change
    change_column :interactions, :status, 'integer USING status::integer'
  end
end
