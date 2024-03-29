Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #para inicio
  root 'pages#home'

  #para las paginas
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  #para el formulario de contacto
  post 'contact', to: 'contact_messages_controller#create'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
