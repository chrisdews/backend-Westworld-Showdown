class Api::V1::GameCardsController < ApplicationController

    def create
        game_card = GameCard.create( game_card_params )
        if game_card.valid?
            render json: { game_card: GameCardSerializer.new(game_card)}, status: :created
        else
            render json: { errors: game_card.errors.full_messages }, status: :not_accepted
        end
    end

    def index
        game_cards = GameCard.all
        render json: game_cards
    end

    private 

    def game_card_params
        params.require(:game_card).permit(:user_id, :score)
    end

end
