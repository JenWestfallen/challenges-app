class PossibleParticipation < ApplicationRecord
  validates :user_id, presence: true
  validates :challenge_id, presence: true


  belongs_to :challenge
  belongs_to :user 

end
