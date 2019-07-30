class Api::V1::CardsController < ApplicationController
  # skip_before_action :authorize, only: [:index]

    def index
        cards = Card.all
        render json: cards
    end

    private 

    # def card_params
    #     params.require(:card).permit(:user_id, :score)
    # end

end
