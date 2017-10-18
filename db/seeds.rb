# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => 'Pepperoni', :description => 'X-Large', :price_in_cents => 9.99)

Product.create(:name => 'Veggie', :description => 'Large', :price_in_cents => 7.99)

Product.create(:name => 'Pineapple', :description => 'X-Large', :price_in_cents => 8.99)

Product.create(:name => 'Cheese', :description => 'X-Large', :price_in_cents => 7.99)
