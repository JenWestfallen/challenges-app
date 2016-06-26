class Category < ApplicationRecord
  
  validates :name, presence: true

  has_many :categorized_challenges
  has_many :challenges, through: :categorized_challenges
end
