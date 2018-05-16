Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes, only: [:index, :show, :create, :update] do
    resources :bike_rents, only: [:create, :update]
  end

  authenticate :user do
  resources :bike_rents, only: [:index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
