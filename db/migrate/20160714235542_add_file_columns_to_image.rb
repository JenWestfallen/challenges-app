class AddFileColumnsToImage < ActiveRecord::Migration[5.0]
  def up
    add_attachment :images, :file
  end

  def down
    remove_attachment :images, :file
  end
end
