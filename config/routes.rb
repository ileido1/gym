Rails.application.routes.draw do
  get 'search/create'

  devise_for :users
  resources :payment_types
  resources :clients do
  resources :payments, only:[ :new, :create, :edit, :update, :destroy, :show]
end
resources :payments, only:[:index]

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
