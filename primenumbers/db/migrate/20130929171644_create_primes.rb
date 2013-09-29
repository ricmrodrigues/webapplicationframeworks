class CreatePrimes < ActiveRecord::Migration
  def change
    create_table :primes do |t|
      t.integer :primenum

      t.timestamps
    end
  end
end
