# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
george = User.create(user_name: "George Orwell", email: "george.orwell@example.com", password: "123456", password_confirmation: "123456")

scott = User.create(user_name: "Scott Fitzgerald", email: "scott.fitzgerald@example.com", password: "123456", password_confirmation: "123456")

stories = Story.create(
  [
    { user: scott, title: 'The Great Gatsby', link: 'https://en.wikipedia.org/wiki/The_Great_Gatsby', email: 'example@example.com' },
    { user: george, title: '1984', link: 'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four', email: 'orwell@example.com' }
  ]
)
