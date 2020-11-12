class ChangeNameToFirstAndLastInClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    change_column :class_registrations, :name, first_name
    add_column :class_registrations, :last_name, :string
  end
end
