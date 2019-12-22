# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: '12345678', password_confirmation: '12345678')
# Role.create!(name: 'user')
# Role.create!(name: 'organizer')
# Role.create!(name: 'venue_owner')
# Role.create!(name: 'admin')
# # User.create!(email: 'demo@example.com', password: '12345678')
# # Permission.create!(user_id: 1, role_id: 1)
# # User.create!(email: 'organizer@eventify.com', password: '12345678')
# # Permission.create!(user_id: 2, role_id: 2)
# # User.create!(email: 'venue_owner@eventify.com', password: '12345678')
# Permission.create!(user_id: 3, role_id: 3)
# User.create!(email: 'admin@eventify.com', password: '12345678')
# Permission.create!(user_id: 4, role_id: 4)



