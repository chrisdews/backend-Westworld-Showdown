class User < ApplicationRecord
    has_secure_password
    has_many :games
    has_many :game_cards, through: :games
    has_many :cards, through: :game_cards

    validates :username, uniqueness: true

def user_total_score
  total = 0
  self.games.map{ |game| total = total + game.score}
  return total
end

def self.all_totals
  high_score = Hash.new
  User.all.map{|user| high_score[user.username] = user.user_total_score}
  
  return high_score.sort_by {|key, value| -value}.to_h
end

#User.all_totals

end
