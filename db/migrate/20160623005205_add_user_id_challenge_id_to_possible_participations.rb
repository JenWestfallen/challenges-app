class AddUserIdChallengeIdToPossibleParticipations < ActiveRecord::Migration[5.0]
  def change
    add_column :possible_participations, :user_id, :integer
    add_column :possible_participations, :challenge_id, :integer
  end
end
