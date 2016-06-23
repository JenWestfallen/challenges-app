class RemoveNameStartDateCategoryDescriptionFromPossibleParticipations < ActiveRecord::Migration[5.0]
  def change
    remove_column :possible_participations, :name, :string
    remove_column :possible_participations, :start_date, :datetime
    remove_column :possible_participations, :description, :text
    remove_column :possible_participations, :category, :string
  end
end
