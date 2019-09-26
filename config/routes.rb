Rails.application.routes.draw do
  resources :destinations, only: [:show]

  resources :bloggers, only: [:new, :create, :show]

  resources :posts, only: [:new, :create, :edit, :update, :show]
end
