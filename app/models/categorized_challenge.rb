class CategorizedChallenge < ApplicationRecord
  belongs_to :challenge
  belongs_to :category
end
