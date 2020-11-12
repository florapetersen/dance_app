class AddPronounsAndInjuryToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :injuries, :string
    add_column :users, :preferred_pronouns, :string
  end
end
