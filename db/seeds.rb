# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.delete_all
Game.delete_all
Card.delete_all
GameCard.delete_all

testuser = User.create(username: 'mrtest', password: '1234')
testcard1 = Card.create(imageurl: 'https://vignette.wikia.nocookie.net/westworld/images/d/d8/Maeve_Les_Ecorches.jpg/revision/latest?cb=20180530183051', name: 'Maeve', description: 'good', apperception: 15, charm: 18, aggression: 9)
testcard2 = Card.create(imageurl: 'https://vignette.wikia.nocookie.net/westworld/images/b/b6/Bernard_Les_Ecorches.png/revision/latest/scale-to-width-down/310?cb=20180604190617', name: 'Bernard', description: 'great', apperception: 9, charm: 12, aggression: 14)
testcard3 = Card.create(imageurl: 'https://vignette.wikia.nocookie.net/westworld/images/5/51/Dolores_Abernathy_Vanishing_Point.jpg/revision/latest?cb=20180613181613', name: 'Dolores', description: 'evil', apperception: 8, charm: 9, aggression: 19)
testgame1 = Game.create(user: testuser, score: 12)
testgame2 = Game.create(user: testuser, score: 2)
testgame3 = Game.create(user: testuser, score: 5)
testgamecard1 = GameCard.create(game_id: 1, card_id: 2)
testgamecard2 = GameCard.create(game_id: 2, card_id: 2)
testgamecard3 = GameCard.create(game_id: 3, card_id: 1)
testgamecard4 = GameCard.create(game_id: 2, card_id: 1)