class ComplaintArticle < ApplicationRecord
  belongs_to :complaint, optional: true

  enum action_type: {
      cagnotte: 0,
      echange: 1,
      remboursement: 2
  }
end
