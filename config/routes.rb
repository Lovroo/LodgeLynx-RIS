Rails.application.routes.draw do
  resources :conversations
  resources :messages
  resources :favorites
  resources :najemis
  devise_for :users
  resources :prebivaliscas

  post '/conversations/create_with_user', to: 'conversations#create_with_user', as: :create_with_user_conversations

  post '/favorites/add_To_favorites', to: 'favorites#add_To_favorites', as: :add_To_favorites_favorites


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "prebivaliscas#index"

  #resources :conversations do
  #  collection do
  #    post :create_with_user
  #  end
  #end
  
end
