# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)

puts 'Skapar användare'
user = User.create! name: 'andersl', email: 'lundstrom123@gmail.com', password: 'testar', password_confirmation: 'testar'
puts 'Ny användare skapad: ' << user.name
