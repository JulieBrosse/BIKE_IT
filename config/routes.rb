Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes, only: [:index, :show, :create, :update] do
    resources :bikes_rents, only: [:create, :update]
  end
  resources :bikes_rents, only: [:index]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
