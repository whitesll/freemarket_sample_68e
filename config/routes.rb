Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users', to: 'devise/registrations#new'
  end
  resources :users, only: [:show, :edit, :update]
  
  root to: 'products#index'
  resources :products, except: [:index] do
    collection do
      get :buy_confirmation
      get '/', to: 'products#new'
      get 'category/get_category_children', to: 'products#get_category_children', defaults: { format: 'json' }
      get 'category/get_category_grandchildren', to: 'products#get_category_grandchildren', defaults: { format: 'json' }
    end
  end
end

