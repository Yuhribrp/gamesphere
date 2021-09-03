Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:index, :create, :show]
  #   resources :evaluations, only: [:index, :create]
  #   resources :friendship, only: [:create]
  # end

  resources :communities, only: [:index, :show, :searches] do
    resources :posts, only: [:index, :new, :create]
    resources :match, only: [:create]
  end
  get '/profile/:id', to: 'pages#profile', as: 'profile'
end