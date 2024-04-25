# db/seeds.rb

# Ensure all existing records are deleted before seeding
Product.delete_all

# Seed 100 product records
100.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price(range: 10.0..1000.0),
    inventory_count: Faker::Number.between(from: 0, to: 1000),
    weight: "#{Faker::Number.between(from: 1, to: 10000)} grams",
    dimensions: "#{Faker::Number.between(from: 1, to: 100)}x#{Faker::Number.between(from: 1, to: 100)}x#{Faker::Number.between(from: 1, to: 100)} cm",
    manufacturer: Faker::Company.name,
    country_of_origin: Faker::Address.country,
    sku: Faker::Alphanumeric.alphanumeric(number: 10),
    barcode: Faker::Barcode.ean
  )
end
