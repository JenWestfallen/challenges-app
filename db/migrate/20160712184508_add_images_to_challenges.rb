class AddImagesToChallenges < ActiveRecord::Migration[5.0]
  def change
      add_column :challenges, :url, :string
  end
end
