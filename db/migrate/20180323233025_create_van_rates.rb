class CreateVanRates < ActiveRecord::Migration[5.1]
  def change
    create_table :van_rates do |t|
      t.integer :zipcode
      t.decimal :rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
