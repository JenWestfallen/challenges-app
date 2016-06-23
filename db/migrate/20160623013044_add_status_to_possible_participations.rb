class AddStatusToPossibleParticipations < ActiveRecord::Migration[5.0]
  def change
    add_column :possible_participations, :status, :string, default: "saved"
  end
end
