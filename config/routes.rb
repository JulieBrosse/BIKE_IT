Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes, only: [:index, :show, :new, :create, :update] do
    resources :bike_rents, only: [:new, :create, :update]
  end

  resources :bike_rents, only: [:index]

  namespace :my do
    resources :bike_rents, only: [:index]
    resources :bikes, only: [:index]
  end



end
