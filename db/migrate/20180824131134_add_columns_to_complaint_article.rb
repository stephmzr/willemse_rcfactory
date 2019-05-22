class AddColumnsToComplaintArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :complaint_articles, :Date_Livraison, :datetime
    add_column :complaint_articles, :number_selected, :integer
  end
end
