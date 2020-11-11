class AddDayToDanceClasses < ActiveRecord::Migration[5.0]
  def change
    add_reference :dance_classes, :day, foreign_key: true
  end
end
