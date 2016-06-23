class AddStatusToParticipations < ActiveRecord::Migration[5.0]
  def change
    add_column :participations, :status, :string, default: "accepted"
  end
end
