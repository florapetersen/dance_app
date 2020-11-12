class AddFirstNameToClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :class_registrations, :first_name, :string
  end
end
