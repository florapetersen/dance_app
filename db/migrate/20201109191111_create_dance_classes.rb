class CreateDanceClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :dance_classes do |t|
      t.string :name
      t.references :style, foreign_key: true
      t.references :studio, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
