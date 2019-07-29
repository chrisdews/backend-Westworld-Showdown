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
testgame1 = Game.create(user: testuser, score: 12)
testgame2 = Game.create(user: testuser, score: 2)
testgame3 = Game.create(user: testuser, score: 5)
testgamecard1 = GameCard.create(game_id: 1, card_id: 2)
testgamecard2 = GameCard.create(game_id: 2, card_id: 2)
testgamecard3 = GameCard.create(game_id: 3, card_id: 1)
testgamecard4 = GameCard.create(game_id: 2, card_id: 1)

hosts = [
    {
        "name": "Man in Black",
        "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/8/83/Old_William_Vanishing_Point.jpg/revision/latest/scale-to-width-down/310?cb=20180808183844",
        "description": "(former) Executive Vice President at Delos
        Majority Shareholder of Westworld, Member of the board of Delos Destinations, Philanthropist",
        "apperception": 0,
        "charm": 4,
        "aggression": 18
    },
    {
        "name": "James Delos",
        "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/e/e2/James_Delos.jpg/revision/latest/scale-to-width-down/310?cb=20180319144139",
        "description": "Founder of Delos",
        "apperception": 0,
        "charm": 13,
        "aggression": 9
    },
    {
      "name": "Dolores",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/5/51/Dolores_Abernathy_Vanishing_Point.jpg/revision/latest?cb=20180613181613",
      "description": "Leader of Wyatt's gang.
      Executive director of the Delos Board (as Hale)",
      "apperception": 19,
      "charm": 11,
      "aggression": 17
    },
    { 
      "name": "Bernard",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/b/b6/Bernard_Les_Ecorches.png/revision/latest/scale-to-width-down/310?cb=20180604190617",
      "description": "Head of Behavior - Westworld",
      "apperception": 19,
      "charm": 14,
      "aggression": 14
    
    },
    { 
      "name": "Maeve",
    
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/d/d8/Maeve_Les_Ecorches.jpg/revision/latest?cb=20180530183051",
      "apperception": 15,
      "charm": 19,
      "aggression": 12
    },
    {
      "name": "Akecheta",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/8/82/Akecheta_Kiksuya.jpg/revision/latest?cb=20180607183222",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    {
      "name": "Peter",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/a/a2/Peter_Abernathy_%281%29.jpg/revision/latest?cb=20161024014816",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Angela",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/b/b2/Angela_Reunion.jpg/revision/latest/scale-to-width-down/310?cb=20180509174920",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Akane",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/f/f3/Akane.jpg/revision/latest/scale-to-width-down/310?cb=20180520132523",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Lawrence",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/c/cb/Lawrence_Reunion.jpg/revision/latest/scale-to-width-down/310?cb=20180613182747",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Teddy",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/a/a9/Teddy_Flood_Phase_Space.jpg/revision/latest/scale-to-width-down/310?cb=20180526115338",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
      
    },
    { 
      "name": "Clementine",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/4/44/Clementine_The_Riddle_of_the_Sphinx.jpg/revision/latest?cb=20180516165617",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Armistice",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/7/78/Armistice_Akane_No_Mai.jpg/revision/latest/scale-to-width-down/310?cb=20180517164314",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Hector",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/7/78/Hector_Journey_Into_Night.jpg/revision/latest/scale-to-width-down/310?cb=20180613183102",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Major",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/3/3b/Major_Craddock_The_Riddle_of_the_Sphinx.jpg/revision/latest?cb=20180511205852",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Rebus",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/f/fe/203_Rebus.png/revision/latest/scale-to-width-down/310?cb=20180607104216",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    },
    { 
      "name": "Musashi",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/6/6b/Musashi_Akane_No_Mai.jpg/revision/latest/scale-to-width-down/310?cb=20180520131337",
      "apperception": rand(20),
      "charm": rand(20),
      "aggression": rand(20)
    }
]

hosts.each do |host|
    Card.create host
end