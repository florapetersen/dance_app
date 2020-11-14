class RemoveTimeAndAmpmFromDanceClasses < ActiveRecord::Migration[5.0]
  def change
    remove_column :dance_classes, :time, :string
    remove_column :dance_classes, :ampm, :string
  end
end
