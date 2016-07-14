class RemoveColumnFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :challenge_id, :integer
  end
end
