class AddNameToClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :class_registrations, :name, :string
  end
end
