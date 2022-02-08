Rails.application.routes.draw do
  resources :sales
  resources :reservations
  resources :books
  devise_for :users
  root to: "books#index"
  resources :books do
    member do
      post 'reserve', to: 'books#reserve'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
