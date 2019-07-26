class Api::V1::GamecardsController < ApplicationController
  before_action :authenticate_user
  # access the current user in your controller with current_user.
end
