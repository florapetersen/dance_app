class AddColumnsToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :address, :string
    add_column :studios, :city, :string
    add_column :studios, :state, :string
    add_column :studios, :zip_code, :string
    add_column :studios, :contact_phone, :string
    add_column :studios, :contact_email, :string
  end
end
