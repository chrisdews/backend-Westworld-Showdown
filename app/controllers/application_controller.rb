class ApplicationController < ActionController::API
  include Knock:Authenticable

 
 
end

# def get_token
#   request.headers["Authorization"]
# end

# def current_user
#   token = get_token
#   decoded_token = decode_token(token)
#   user = User.find(decoded_token["user_id"])
#   user_hash = {
#     username: user[:username],
#     id: user[:id]
#   }
# end

# def logged_in
#   !!current_user
# end