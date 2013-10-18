class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.decimal :age
      t.string :address

      t.timestamps
    end
  end
end
