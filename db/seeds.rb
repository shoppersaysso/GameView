# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(name: 'Action')
Genre.create(name: 'Adventure')
Genre.create(name: 'RPG')
Genre.create(name: 'Simulation')
Genre.create(name: 'Strategy')
Genre.create(name: 'Sports')
Genre.create(name: 'Horror')
Genre.create(name: 'Kids')

Console.create(name: 'XBox')
Console.create(name: 'Playstation')
Console.create(name: 'Nintendo')
Console.create(name: 'Steam')
Console.create(name: 'PC')
Console.create(name: 'iOS')
Console.create(name: 'Andriod')

User.create(email: "sara@sara.com", password: "password", password_confirmation: "password")
