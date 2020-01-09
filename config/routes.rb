Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root 'posts#landing_page'
  get 'static_pages/help'
  get 'static_pages/post'
  get 'search', to: 'posts#search'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
