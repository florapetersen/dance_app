class RemoveDateFromClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_registrations, :date
  end
end
