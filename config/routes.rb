Rails.application.routes.draw do
root 'courses#index'
# get 'courses/index'
# get 'modules/index'

devise_for :user
# root "courses#index"
resources :courses do 
	resources :chapters
end



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