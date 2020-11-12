class AddInjuriesAndPronounsToClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :class_registrations, :injuries, :string
    add_column :class_registrations, :preferred_pronouns, :string
  end
end
