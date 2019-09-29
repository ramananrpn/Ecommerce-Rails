class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end