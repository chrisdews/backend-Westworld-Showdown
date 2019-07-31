class Api::V1::GamesController < ApplicationController

    def create
        game = Game.create( game_params )
        if game.valid?
            # debugger
            render json: { game: GameSerializer.new(game)}, status: :created
        else
            render json: { errors: game.errors.full_messages }, status: :not_accepted
        end
    end

    def index
        games = Game.all
        render json: games
    end

    private 

    def game_params
        params.require(:game).permit(:user_id, :score)
    end
end
