# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Seeding promos"
PRODUCTS = [
  { name: 'Watch 1', description: 'Watch description 1', price_in_cents: 179, picture: 'https://cdn.shopify.com/s/files/1/0377/2037/products/GunmetalSandstoneLeather.Front.EDIT_1024x.jpg?v=1510684261'},
  { name: 'Watch 2', description: 'Watch description 2', price_in_cents: 99, picture: 'https://ae01.alicdn.com/kf/HTB1llr9RXXXXXbxXFXXq6xXFXXXk/No-logo-watches-high-quality-fashion-lovers-watch-customized-women-dress-watch-casual-leather-men-watches.jpg_640x640.jpg'},
  { name: 'Watch 3', description: 'test', price_in_cents: 99, picture: 'https://ae01.alicdn.com/kf/HTB1Xc.5PVXXXXbgaVXXq6xXFXXXC/NO-LOGO-classic-Elite-Watch-Men-Women-Simple-Stable-Pointer-Clock-Fashion-Interview-White-Collar-Wrist.jpg_640x640.jpg'},
  { name: 'Watch 4', description: 'Watch description 4', price_in_cents: 99, picture: 'http://doomhall.com/media/2016/03/SKU2737452.jpg'},
  { name: 'Watch 5', description: 'Watch description 5', price_in_cents: 99, picture: 'https://cdn.shopify.com/s/files/1/0650/7427/files/fte3002-rose-gold-tan-ladies-minimal-watch.JPG?13036030452529108884'},
  { name: 'Watch 6', description: 'Watch description 6', price_in_cents: 99, picture: 'https://sc01.alicdn.com/kf/HTB1B6_JaDZRMeJjSsppq6xrEpXaJ/New-arrival-exclusive-men-no-logo-watches.jpg_350x350.jpg'},
  { name: 'Watch 7', description: 'Test', price_in_cents: 99, picture: 'https://cdn.shopify.com/s/files/1/0377/2037/products/WhiteTanLeather.Front_1024x1024.jpg?v=1510683461'},
  { name: 'Watch 8', description: 'Test', price_in_cents: 99, picture: 'https://cdn.shopify.com/s/files/1/0377/2037/products/Voyager08.Front_1024x1024.jpg?v=1510685016' },
  { name: 'Watch 9', description: 'Test', price_in_cents: 99, picture: 'https://cdn.shopify.com/s/files/1/0377/2037/products/Womens14.Front_1024x.jpg?v=1510688045'},
  { name: 'Watch 10', description: 'Watch description 10', price_in_cents: 99, picture: 'https://slimages.macysassets.com/is/image/MCY/products/0/optimized/3888380_fpx.tif?bgc=255,255,255&wid=224&qlt=90,0&layer=comp&op_sharpen=0&resMode=bicub&op_usm=0.7,1.0,0.5,0&fmt=jpeg'},
]

#Product.destroy_all
PRODUCTS.each do | product |
    Product.find_or_create_by!(name: product[:name], description: product[:description], price_in_cents: product[:price_in_cents], :picture => product[:picture])
end
