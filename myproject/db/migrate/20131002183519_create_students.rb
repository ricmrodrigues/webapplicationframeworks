class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.integer :studentnumber
      t.string :email
      t.string :mobile

      t.timestamps
    end
  end
end
