Rails.application.routes.draw do

  #CRUD
  #Read
  # #Read all restaurants
  # get '/restaurants', to: "restaurants#index"

  # #Read one restaurant
  # #restaurants/6
  # get '/restaurants/:id', to: "restaurants#show"

  # #Create one restaurant
  # #1st reguest get the form
  # get '/restaurants/new', to: "restaurants#new"

  # #2nd request to submit the form
  # post '/restaurants', to: "restaurants#create"

  # #Update one restaurant
  # #request to get the form
  # #restaurants/6/edit
  # get 'restaurants/:id/edit', to: "restaurants#edit"

  # #request to submit the form
  # patch 'restaurants/:id', to: "restaurants#update"

  # # Destroy/Delete one restaurant
  # #restaurants/6
  # delete 'restaurants/:id', to: "restaurants#destroy"

  resources :restaurants, except: [:destroy, :show]

end
