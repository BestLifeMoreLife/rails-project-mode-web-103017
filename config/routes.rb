Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index]
  resources :events
  resources :comments, except: [:index, :new]
  resources :categories, only: [:index, :show]
  post '/events/:id', to: "comments#create"
  get '/events/:id/attendants', to: "events#attendants", as: "event_attendants"
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/sessions', to: "sessions#create", as: "sessions"
  get '/logout', to: "sessions#destroy", as: "logout"
end
