class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :participations
  has_many :challenges, through: :participations

  has_many :possible_participations
  has_many :challenges, through: :possible_participations

  has_many :comments

  def saved_challenges
    possible_participations.where(status: 'saved')
  end

  def accepted_challenges
    participations.where(status: 'accepted')
  end
end
