class ComplaintAnswer < ApplicationRecord
  has_many :complaints_to_answers
  has_many :complaints, through: :complaints_to_answers, dependent: :destroy

  enum opinion: {
      favorable: 0,
      partagee: 1,
      defavorable: 2,
      aucune: 3
  }
end
