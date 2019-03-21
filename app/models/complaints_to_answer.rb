class ComplaintsToAnswer < ApplicationRecord
  belongs_to :complaint_answer
  belongs_to :complaint
end
