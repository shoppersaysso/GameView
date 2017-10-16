# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "sara@sara.com", password: "password", password_confirmation: "password", gameview_level: 3)
User.create(email: "dylan@dylan.com", password: "password", password_confirmation: "password", gameview_level: 2)
User.create(email: "test@test.com", password: "password", password_confirmation: "password", gameview_level: 1)

Game.create(title: 'StarCraft: Remastered', developer: "Blizzard Entertainment", user_id: 1, genre: 'Science Fiction', esrb_rating: 'Teen', multiplayer: true)
Game.create(title: 'The Legend of Zelda', developer: "Nintendo", user_id: 2, genre: 'RPG', esrb_rating: 'Everyone', multiplayer: false)
Game.create(title: "Uncharted: Drake's Fortune", developer: "Naughty Dog", user_id: 3, genre: 'Adventure', esrb_rating: 'Teen', multiplayer: false)

Review.create(title: 'Amazing Gameplay!', content: 'Another great offering from Blizzard and true to the franchise. The visuals are stunning. 4 stars!', game_id: 1, user_id: 1)
Review.create(title: 'Visually stunning', content: "Great addition to my favorite game series.!", game_id: 2, user_id: 2)
Review.create(title: 'Disappointing', content: "Some of the controls are clunky and hinder the overall gaming experience. The story was great, though.", game_id: 3, user_id: 3)
