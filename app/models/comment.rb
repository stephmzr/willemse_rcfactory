class Comment < ApplicationRecord
    belongs_to :interactions, optional: true
end
