class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :locality, :string
    add_column :users, :zipcode, :string
    add_column :users, :phone, :string
  end
end
