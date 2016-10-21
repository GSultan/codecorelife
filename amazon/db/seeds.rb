# 1000.times do
#   Product.create({ title: Faker::Commerce.product_name,
#                     description: Faker::ChuckNorris.fact,
#                     price: Faker::Commerce.price
#                   })
# end
#
# puts Cowsay.say('Generated 1000 products','random')
#
# 100.times do
#   Question.create ({title: Faker::GameOfThrones.character, body: Faker::GameOfThrones.house})
# end

10.times do
  Category.create ({name: Faker::Team.name})
end

  ###in product model , belongs to category
#   in products_controller: )
#   p.label
#   p.collection_select :category_id, @categories, :id, :name, :prompt => "select"
# end

# puts Cowsay.say('Generated 100 questions','random')
puts Cowsay.say('Generated 10 categories','random')


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
