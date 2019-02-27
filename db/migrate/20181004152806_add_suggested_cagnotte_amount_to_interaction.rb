class AddSuggestedCagnotteAmountToInteraction < ActiveRecord::Migration[5.1]
  def change
    add_column :interactions, :suggested_cagnotte_amount, :float
  end
end
