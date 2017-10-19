# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "sara@sara.com", password: "password", password_confirmation: "password", gameview_level: 4)
User.create(email: "dylan@dylan.com", password: "password", password_confirmation: "password", gameview_level: 3)
User.create(email: "test@test.com", password: "password", password_confirmation: "password", gameview_level: 1)


Game.create(title: 'StarCraft: Remastered', developer: "Blizzard Entertainment", user_id: 1, genre: 'Science Fiction', esrb_rating: 'Teen', multiplayer: true)
Game.create(title: 'The Legend of Zelda', developer: "Nintendo", user_id: 2, genre: 'RPG', esrb_rating: 'Everyone', multiplayer: false)
Game.create(title: "Uncharted: Drake's Fortune", developer: "Naughty Dog", user_id: 3, genre: 'Adventure', esrb_rating: 'Teen', multiplayer: false)
Game.create(title: "Super Mario World", developer: "Nintendo", user_id: 1, genre: 'Adventure', esrb_rating: 'Everyone', multiplayer: true)
Game.create(title: "EarthBound", developer: "Shigesato Itoi", user_id: 1, genre: 'RPG', esrb_rating: 'Everyone', multiplayer: false)
Game.create(title: "Donkey Kong Country", developer: "Nintendo", user_id: 1, genre: 'Adventure', esrb_rating: 'Everyone', multiplayer: true)
Game.create(title: "Super Mario RPG", developer: "Nintendo", user_id: 2, genre: 'RPG', esrb_rating: 'Everyone', multiplayer: false)
Game.create(title: "Super Smash Bros Melee", developer: "HAL Laboratory", user_id: 2, genre: 'Fighting', esrb_rating: 'Teen', multiplayer: true)
Game.create(title: "Final Fantasy VI", developer: "Square", user_id: 2, genre: 'RPG', esrb_rating: 'Teen', multiplayer: false)
Game.create(title: "Rise of the Tomb Raider", developer: "Square", user_id: 3, genre: 'Action-Adventure', esrb_rating: 'Teen', multiplayer: false)



Review.create(title: 'Amazing Gameplay!', content: 'Another great offering from Blizzard and true to the franchise. The visuals are stunning. 4 stars!', game_id: 1, user_id: 1)
Review.create(title: 'Visually stunning', content: "Great addition to my favorite game series.!", game_id: 2, user_id: 2)
Review.create(title: 'Disappointing', content: "Some of the controls are clunky and hinder the overall gaming experience. The story was great, though.", game_id: 3, user_id: 3)
Review.create(title: 'A Classic Favorite', content: "A game that really defined future gaming for so many. They replay factor does not get old.", game_id: 4, user_id: 1)
Review.create(title: 'Weird but amazing', content: "The planet is about to be taken over by aliens and only you and 3 friends can stop it. Oh, and magic butterflies take your stress away.", game_id: 5, user_id: 1)
Review.create(title: 'Great, Also Flawed', content: "The introduction of Diddy Kong was great, but it's annoying how you can't play both characters at the same time. You have to switch off back and forth, which is not good for game-hogging players.", game_id: 6, user_id: 1)
Review.create(title: 'Disappointing', content: "Some of the controls are clunky and hinder the overall gaming experience. The story was great, though.", game_id: 7, user_id: 2)
Review.create(title: 'Crazy Stupid Fun', content: "You get to answer the question of what if all my favorite game characters were in a fight—-who would win?", game_id: 8, user_id: 2)
Review.create(title: 'Epic', content: "The story-telling in the Final Fantasy series really is what makes this game so alluring.", game_id: 9, user_id: 2)
Review.create(title: 'Best Reboot Ever', content: "Lara Croft has always been iconic, but the new rebooted version of her is more realistic yet way more badass.", game_id: 9, user_id: 3)
