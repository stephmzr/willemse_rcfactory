class ChangeInteractionObjectToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :interactions, :object, 'integer USING CAST(object AS integer)'
  end

  def down
    change_column :interactions, :object, :string
  end
end
