# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LineItem.delete_all
Product.delete_all


Product.create!(title: 'Dairy Products', description: %{<p><em>German Gouda Cheese</em>
  Good cheese from the Alp mountains. Exported fresh from the northern regions of Austria.
  You can add this cheese to salads, entrees, or just eat it with bread. You will expereince the
  taste, smell, and feel of the alp mountains. While eating this cheese you will feel as if you
  were on vacation in the Autrian mountains. Truly, a exotic and relaxing taste.</p> },
image_url: 'dairy.jpg',
price: 150.00)

Product.create!(title: 'Black Bread', description: %{<p><em>Russian Black Bread</em>
  Black Bread from the bakeries of Moscow. Exported fresh from the capital of Russia.
  You can use this bread to spread butter, preserves, or just snack on it. You will expereince the
  taste Russian homeland by eating this delicious bread. While eating this bread you will feel as if you
  were at a cafe in Saint Petersburg. Get your homey experience no</p> },
image_url: 'black_bread.jpg',
price: 75.00)

Product.create!(title: "Caffiene Candy Ruby",
description: "Ruby is a sweet candy that will wake you up",
price: 1.95,
image_url: "ruby.jpg")
