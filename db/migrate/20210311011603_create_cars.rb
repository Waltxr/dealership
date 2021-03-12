class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :price
      t.boolean :new

      t.timestamps
    end
  end
end
