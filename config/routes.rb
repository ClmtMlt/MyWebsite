Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
  get '/cv', to: 'pages#cv', as: 'cv'
  get '/projects', to: 'pages#projects', as: 'projects'
  get '/contacts', to: 'contacts#index', as: 'contacts'
  get '/about-me', to: 'pages#about_me', as: 'about_me'
  post '/contacts', to: 'contacts#create', as:'contacts_create'
end
