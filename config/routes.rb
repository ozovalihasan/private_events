Rails.application.routes.draw do
  root 'events#index'
  resources :events, only: %i[index show new create]
  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show new create]
  resources :invitations, only: [:create]
end
