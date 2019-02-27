class Interaction < ApplicationRecord
  has_many :attachments, dependent: :destroy
  has_one :complaint, dependent: :destroy

  attr_accessor :client_name

  enum kind: {
      telephone: 0,
      email: 1,
      facebook: 2,
      amazon: 3,
      trustpilot: 4,
      courrier: 5,
      rc: 6,
      fevad: 7,
      retour: 8
  }

  enum status: {
      open: 0,
      ongoing: 1,
      closed: 2
  }
end
