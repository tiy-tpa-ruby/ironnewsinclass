# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stories = Story.create(
  [
    { title: "Tesla's Taking Over The World", link: "https://en.wikipedia.org/wiki/Tesla", email: "elon@example.com" },
    { title: "1984", link: "https://en.wikipedia.org/wiki/Nineteen_Eighty-Four", email: "1984@example.com" }
  ]
)
