Rails.application.routes.draw do



 devise_scope :user do
    get "welcome/:page" => "welcome#show", :as => 'welcome'

  unauthenticated  do
    root "welcome#home", as: :unauthenticated_root
  end
  authenticated do
    get "dashboard/:page" => "dashboard#show", :as => 'dashboard'
    root 'dashboard#dashboard', as: :authenticated_root
  end
  # get 'user/:username' => 'user#profile'
 end


devise_for :users, controllers: {
        sessions: 'users/sessions'
      }



get 'welcome/home'
get 'welcome/contact'
# get '/:username' => 'dashboard#profile'

# Ressources users || particulièrment dangereux
# doit etre changer pour seulement si super admin et faire un crud pour chaque utilisateur
# Proteger par un double mot de passe
# et doit etre une suppression soft / grosse suppression doit uniquement etre faire via console
# et demande ecrite de l utilisateur
# resources :users, :path => '', :only => [:show]
  resources :users

# devise_for :user 
# two lines below are needed for devise/controller
 
    

  scope shallow_path: "librairie" do
    resources :courses, :path => "librairie" do
    	resources :chapters, shallow: true
      put :edit, on: :member  
    end


    resources :chapters do 
        resources :lessons, shallow: true
    end
    resources :lessons

  end

end