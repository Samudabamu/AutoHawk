# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create username: 'samuel', email: 'samuel.westen01@gmail.com', password_digest: 'chicken'
User.create username: 'grant', email: 'grant.Hanrahan0@gmail.com', password_digest: 'chicken'
User.create username: 'steven', email: 'steven.phuong01@gmail.com', password_digest: 'chicken'


puts "Created #{User.all.length} users."
