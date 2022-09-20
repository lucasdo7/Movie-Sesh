Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies, only: %i[index show search]

  resources :bookmarks, only: %i[create destroy]

  resources :lists, only: %i[index]

  resources :seshs, only: %i[index show new create destroy]
end
