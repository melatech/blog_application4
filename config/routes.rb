Rails.application.routes.draw do
  resources :posts
  # we are setting the action of the controller to go to pages folder and find the home html 
  # substitute the "get" for the local url for example (http://localhost:3000/about) the slash then the route 'name'

  # get 'pages/home'
  # get 'home', to: 'pages#home'

  # if i want to link to the about path i have to use the "about_path" variable string

  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # Go into the (page controller)and look for an home action)
   root "pages#home"
end
