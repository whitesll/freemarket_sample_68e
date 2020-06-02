Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
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
    resources :creditcards, only: [:new, :show] do
      collection do
        get 'new', to: 'creditcards#new'
        post 'show', to: 'creditcards#show'
        post 'pay', to: 'creditcards#pay'
        post 'delete', to: 'creditcards#delete'
      end
    end
  end
  
  root to: 'products#index'
  resources :products, except: [:index] do
    collection do
      get :buy_confirmation
      get '/', to: 'products#new'
    end
  end
  resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
end

