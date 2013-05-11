Prairie::Application.routes.draw do

  root :to => 'pages#welcome'

  match "welcome" => "pages#welcome"
  get "login", :to => "sessions#new", as: "login"
  get "logout", :to => "sessions#destroy", as: "logout"
  resources :sessions, :only => [:new, :create]

  get "register", :to => "users#new", as: "register"
  resources :users, except: :show

end
