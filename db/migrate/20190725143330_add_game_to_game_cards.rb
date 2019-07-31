class AddGameToGameCards < ActiveRecord::Migration[5.2]
  def change
    add_reference :game_cards, :game, foreign_key: true
    remove_reference :game_cards, :user
  end
end
