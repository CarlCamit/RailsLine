# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'gretch@gretchen.com', password: 'password123', password_confirmation: 'password123')
User.create(email: 'carl@gretchen.com', password: 'password123', password_confirmation: 'password123')
User.create(email: 'hannah@gretchen.com', password: 'password123', password_confirmation: 'password123')