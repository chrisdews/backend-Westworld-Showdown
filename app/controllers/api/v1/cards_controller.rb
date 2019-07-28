class Api::V1::CardsController < ApplicationController
  

    def index
        cards = Card.all
        render json: cards
    end



    private 

    # def card_params
    #     params.require(:card).permit(:user_id, :score)
    # end
end
