class AddAddressToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :address1, :string
    add_column :customers, :address2, :string
    add_column :customers, :city, :string
    add_column :customers, :county, :string
    add_column :customers, :country, :string
  end
end
