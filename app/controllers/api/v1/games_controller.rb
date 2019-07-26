class Api::V1::GamesController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      render: Game.all
    else
      render: {"nope": "nope"}
    end
  end

end
