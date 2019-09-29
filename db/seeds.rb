# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = [
    ['Electronics'],
    ['Fashion'],
    ['Grocery']
]

category.each do |category_name|
  Category.create(category_name: category_name)
end