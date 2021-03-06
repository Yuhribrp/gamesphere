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


  resources :communities, only: [:index, :show, :searches] do
    resources :posts, only: [:index, :new, :create]
    resources :matches, only: [:index, :create]
    post 'join', to: 'memberships#join' , as: 'member'
  end
  resources :users, only: [:edit, :update]
  get '/profile/:id', to: 'pages#profile', as: 'profile'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  resources :posts, only: [:destroy]
end
