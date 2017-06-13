class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :oneline, limit: 50, null: false
      t.string :twoline, limit: 50
      t.string :zip, limit: 10, null: false
      t.string :country, limit: 2
      t.string :city

      t.timestamps
    end
  end
end
