Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  devise_for :users
  root to: "recipes#index"
  get "profile", to: "pages#profile", as: :profile
  resources :ingredients, only: %i[index new create edit update]
  resources :recipes, only: %i[index show] do
    resources :bookmarks, only: %i[create]
    resources :reviews, only: %i[create update]
  end
  resources :reviews, only: %i[destroy]
  resources :bookmarks, only: %i[destroy]
  resources :ingredients, only: %i[destroy]
end
