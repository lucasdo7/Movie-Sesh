Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies, only: %i[index show]

  resources :bookmarks, only: %i[create destroy]

  resources :seshs, only: %i[index show new create destroy]
end
