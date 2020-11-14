class AddDateTimeToDanceClasses < ActiveRecord::Migration[5.0]
  def change
    add_column :dance_classes, :start_time, :datetime
  end
end
