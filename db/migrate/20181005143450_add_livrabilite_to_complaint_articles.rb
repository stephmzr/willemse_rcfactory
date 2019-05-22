class AddLivrabiliteToComplaintArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :complaint_articles, :Livrabilite, :string
  end
end
