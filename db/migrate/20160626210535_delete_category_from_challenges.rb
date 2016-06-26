class DeleteCategoryFromChallenges < ActiveRecord::Migration[5.0]
  def change
    remove_column :challenges, :category, :string
  end
end
