Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:index, :create, :show]
  #   resources :evaluations, only: [:index, :create]
  #   resources :friendship, only: [:create]
  # end

  resources :communities, only: %i[index show searches] do
    resources :posts, only: %i[index new create]
    resources :matches, only: %i[index create]
  end
  resources :users, only: %i[edit update]
  get '/profile/:id', to: 'pages#profile', as: 'profile'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
