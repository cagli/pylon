Rails.application.routes.draw do

get 'courses/index'
devise_for :user
root "courses#index"





devise_scope :user do
  unauthenticated :user do
  root 'devise/sessions#new', as: :unauthenticated_root
  end

  
  authenticated :user do
  resources :courses
  root 'courses#index', as: :authenticated_root
  end
end

  
end