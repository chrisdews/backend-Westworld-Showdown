class User < ApplicationRecord
    has_secure_password
    has_many :games
    has_many :game_cards, through: :games
    has_many :cards, through: :game_cards
end
