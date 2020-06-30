Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'sessions#home'
  get '/home', to: 'sessions#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/logout', to: 'sessions#destroy' 

  get '/seshes/new', to: 'seshes#new'
  post '/seshes', to: 'seshes#create'

  get '/workouts/new', to: 'workouts#new' 
  post '/workouts', to: 'workouts#create' 

  post '/gyms', to: 'gyms#create' 
  get '/gyms/edit', to: 'gyms#edit', as: 'edit_gym'
  patch '/gyms', to: 'gyms#update'
  get '/gyms/delete', to: 'gyms#delete', as: 'delete_gym'

  get '/workouts', to: 'workouts#show' 
  get '/workouts/delete', to: 'workouts#delete', as: 'delete_workout'

  get '/workoutexercises/:id', to: 'workoutexercises#show' 
  get '/workoutexercises/:id/edit', to: 'workoutexercises#edit'
  # patch '/workoutexercises', to: 'workoutexercises#update' 
  
  
end 

# TODO: Tests how to access list of workout exercises