class AddTimeAndDurationToDanceClasses < ActiveRecord::Migration[5.0]
  def change
    add_column :dance_classes, :time, :string
    add_column :dance_classes, :ampm, :string
    add_column :dance_classes, :duration, :string
  end
end
