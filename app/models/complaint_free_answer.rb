class ComplaintFreeAnswer < ApplicationRecord
  belongs_to :complaint, optional: true
end