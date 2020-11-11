class RemoveStartAndEndFromClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_registrations, :start_time, :string
    remove_column :class_registrations, :end_time, :string
  end
end
