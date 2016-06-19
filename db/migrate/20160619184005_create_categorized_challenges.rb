class CreateCategorizedChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :categorized_challenges do |t|
      t.integer :challenge_id
      t.integer :category_id

      t.timestamps
    end
  end
end
