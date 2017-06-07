class CreateEcommerces < ActiveRecord::Migration[5.1]
  def change
    create_table :ecommerces do |t|
      t.text :sku
      t.integer :quantity
      t.text :name

      t.timestamps
    end
  end
end
