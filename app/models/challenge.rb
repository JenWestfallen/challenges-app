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

  def category
    @category = ''
    challenge = Challenge.find(params[:id])
    challenge.categories.each do |category|
      @category = category.name
    end
    @category
  end

end
