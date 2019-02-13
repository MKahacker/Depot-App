# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create!(title: 'Dairy Products', description: %{<p><em>German Gouda Cheese</em>
  Good cheese from the Alp mountains. Exported fresh from the northern regions of Austria.
  You can add this cheese to salads, entrees, or just eat it with bread. You will expereince the
  taste, smell, and feel of the alp mountains. While eating this cheese you will feel as if you
  were on vacation in the Autrian mountains. Truly, a exotic and relaxing taste.</p> },
img_url: 'dairy.jpg',
price: 150.00)
