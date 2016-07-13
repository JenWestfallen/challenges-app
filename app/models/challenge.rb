class Challenge < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :description, presence: true
  validates :description, length: { minimum: 20}


  has_many :categorized_challenges
  has_many :categories, through: :categorized_challenges

  has_many :participations
  has_many :users, through: :participations

  has_many :images

  def category_names
    category_names = []
    categories.each do |category|
      category_names << category.name
    end
    category_names
  end

  def counter
    participations.length
  end

end
