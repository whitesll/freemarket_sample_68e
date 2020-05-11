Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, except: [:index] do
    get :about, on: :collection
  end
  get '/products', to: redirect('/products/new')
end
