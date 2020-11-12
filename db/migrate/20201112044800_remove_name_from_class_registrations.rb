class RemoveNameFromClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_registrations, :name
  end
end
