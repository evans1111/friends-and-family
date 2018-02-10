# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Seeding promos"
PRODUCTS = [
  { name: 'Watch 1', description: 'Watch description 1', price_in_cents: 99},
  { name: 'Watch 2', description: 'Watch description 2', price_in_cents: 99},
  { name: 'Watch 3', description: 'Watch description 3', price_in_cents: 99},
  { name: 'Watch 4', description: 'Watch description 4', price_in_cents: 99},
  { name: 'Watch 5', description: 'Watch description 5', price_in_cents: 99},
  { name: 'Watch 6', description: 'Watch description 6', price_in_cents: 99},
  { name: 'Watch 7', description: 'Watch description 7', price_in_cents: 99},
  { name: 'Watch 8', description: 'Watch description 8', price_in_cents: 99},
  { name: 'Watch 9', description: 'Watch description 9', price_in_cents: 99},
  { name: 'Watch 10', description: 'Watch description 10', price_in_cents: 99},
]

PRODUCTS.each do | product |
    Product.find_or_create_by!(name: product[:name], description: product[:description], price_in_cents: product[:price_in_cents])
end
