Rails.application.routes.draw do



get "welcome/:page" => "welcome#show", :as => 'welcome'
get "dashboard/:page" => "dashboard#show", :as => 'dashboard'

get 'welcome/home'
get 'welcome/contact'
get 'dashboard/dashboard'


# devise_for :user 

 devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
    

scope shallow_path: "short" do
  resources :courses, :path => "library" do
  	resources :chapters, shallow: true
  end


  resources :chapters do 
       resources :lessons, shallow: true
  end
  resources :lessons

end



# devise_scope :user do
  unauthenticated :user do
  	root "welcome#home", as: :unauthenticated_root
  end
  authenticated :user do
    root 'dashboard#dashboard', as: :authenticated_root
  end
# end


end
# end