# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    sku: 'sku_001',
    quantity: 1,
    name: 'Audifonos',
  },
  {
    sku: 'sku_002',
    quantity: 2,
    name: 'PS4',
  },
  {
    sku: 'sku_003',
    quantity: 3,
    name: 'Celular',
  }
].each do |product|
  Product.create product
end

[
  {
    username: 'mateo1',
    password: "456",
    email: 'mateo1@prueba.com',
  },
  {
    username: 'mateo2',
    password: "123",
    email: 'mateo2@prueba.com',
  },
  {
    username: 'mateo3',
    password: "789",
    email: 'mateo3@prueba.com',
  }
].each do |user|
  User.create user
end
