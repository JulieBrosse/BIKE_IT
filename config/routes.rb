Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes, only: [:index, :show, :new, :create, :update] do
    resources :bike_rents, only: [:create, :update]
  end

  authenticate :user do
  resources :bike_rents, only: [:index]
  resources :bikes, only: [:new]
  end
end
