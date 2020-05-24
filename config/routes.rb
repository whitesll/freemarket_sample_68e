Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users', to: 'devise/registrations#new'
  end
  
  root to: 'products#index'
  resources :products, except: [:index] do
    collection do
      get :buy_confirmation
      get '/', to: 'products#new'
    end
  end
end
