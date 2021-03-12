class AddMakeToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :make, :string
  end
end
