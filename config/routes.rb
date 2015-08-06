Rails.application.routes.draw do


  get "welcome/:page" => "welcome#show", :as => 'welcome'
  get "dashboard/:page" => "dashboard#show", :as => 'dashboard'

  root "welcome#show", page: "home"
 
  get 'welcome/home'
  get 'welcome/contact'
  get 'dashboard/dashboard'



devise_for :user
	resources :courses do 
		resources :chapters
end



devise_scope :user do
  unauthenticated :user do
  	root "welcome#home", as: :unauthenticated_root
  end
  authenticated :user do
    root 'dashboard#dashboard', as: :authenticated_root
  end
end

  
end