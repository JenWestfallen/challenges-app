class AddChallengeIdToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :challenge_id, :integer
  end
end
