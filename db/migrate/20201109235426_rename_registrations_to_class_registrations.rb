class RenameRegistrationsToClassRegistrations < ActiveRecord::Migration[5.0]
  def change
    rename_table :registrations, :class_registrations
  end
end
