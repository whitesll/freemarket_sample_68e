Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  get 'creditcard/new'
  get 'creditcard/show'
  devise_for :users
  root to: 'products#index'
  resources :creditcards, only: [:new, :show] do
    collection do
      post 'show', to: 'creditcards#show'
      post 'pay', to: 'creditcards#pay'
      post 'delete', to: 'creditcards#delete'
    end
  end
  resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
  resources :users, only: :show
  resources :products, except: [:index] do
    get :about, on: :collection
  end
  get '/products', to: redirect('/products/new')
end
