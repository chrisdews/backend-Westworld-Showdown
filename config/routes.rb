Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :games, :cards, only: [:create, :show, :index, :edit, :destroy]
        resources :users, only: [:create, :index, :show] # create?
        # get '/validate', to: 'auth#validate'
        # post "auth/create", to: "auth#create"
        # get "/my_games", to: "games#my_games"
    end
  end
end
