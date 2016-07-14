class RemoveColumnFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :challenge_id, :integer
  end
end
