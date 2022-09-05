Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :users do 
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, om: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
