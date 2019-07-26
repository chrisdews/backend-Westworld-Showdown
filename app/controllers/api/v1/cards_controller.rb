class Api::V1::CardsController < ApplicationController
  before_action :authenticate_user
end
