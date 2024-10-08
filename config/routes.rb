Rails.application.routes.draw do
  root to: 'homes#top'
  get "home/about" => "homes#about", as: 'about'
  
  devise_for :users
  
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] do
    resource :favorite, only: [:create, :destroy]
  end
  
  resources :book_comments, only: [:create, :destroy]
  
  resources :users, only: [:index, :show, :edit, :update]
end
