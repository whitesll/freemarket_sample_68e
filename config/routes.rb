Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users', to: 'devise/registrations#new'
  end
  resources :users, only: [:show, :edit, :update] do
    member do
      get 'exh', to: 'users#exh_show'
      get 'buy', to: 'users#buy_show'
      get 'edit_address', to: 'users#edit_address'
      patch 'edit_address', to: 'users#edit_address_post'
    end
    resources :creditcards
  end
  
  root to: 'products#index'
  resources :products, except: [:index] do
    get :buy_confirmation, on: :collection
  end
end

