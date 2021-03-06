Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, :games, :cards, only: [:create, :show, :index, :edit, :destroy]
        post '/login', to: 'auth#create'
        get '/validate', to: 'auth#validate'
        get '/totals', to: 'users#score_totals'

    end
  end
end

