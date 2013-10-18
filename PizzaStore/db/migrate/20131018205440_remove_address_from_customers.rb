class RemoveAddressFromCustomers < ActiveRecord::Migration
  def up
    remove_column :customers, :address
  end

  def down
    add_column :customers, :address, :string
  end
end
