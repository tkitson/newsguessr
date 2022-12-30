Rails.application.routes.draw do
  root to: "pages#home"

  # get '/new_guess', to: 'pages#new_guess'
  get '/correct', to: 'pages#correct'

  resources :user_guess, only: [:create, :new]
  resources :pages


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
