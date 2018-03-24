class CreateSixTeenFootRates < ActiveRecord::Migration[5.1]
  def change
    create_table :six_teen_foot_rates do |t|
      t.integer :zipcode
      t.decimal :rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
