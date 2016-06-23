class ChangeStartDateToStringToChallenges < ActiveRecord::Migration[5.0]
  def change
    change_column :challenges, :start_date, :string
  end
end
