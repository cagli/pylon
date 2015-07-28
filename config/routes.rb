Rails.application.routes.draw do
# get 'chapters/index'
get "welcome/:page" => "welcome#show", :as => 'welcome'
root "welcome#show", page: "home"
 get 'welcome/home'
  get 'welcome/contact'
  # root 'courses#index'
# root "devise/sessions#new"

devise_for :user
	resources :courses do 
		resources :chapters
end



devise_scope :user do
  unauthenticated :user do
  	root "welcome#home", as: :unauthenticated_root
  # root 'devise/sessions#new', as: :unauthenticated_root
  end
  authenticated :user do
  root 'courses#index', as: :authenticated_root
  end
end

  
end