Rails.application.routes.draw do

  devise_for :users
  root to: 'challenges#landing_index'

  get '/challenges' => 'challenges#index'
  get '/challenges/landing' => 'challenges#landing_index'
  get '/challenges/new' => 'challenges#new'

  post '/challenges' => 'challenges#create'
  get '/challenges/:id' => 'challenges#show'

  get '/challenges/:id/edit' => 'challenges#edit'
  patch '/challenges/:id' => 'challenges#update'

  delete '/challenges/:id' => 'challenges#destroy'



  get '/participations' => 'participations#index'
  get '/participations/new' => 'participations#new'

  post '/participations' => 'participations#create'
  get '/participations/:id' => 'participations#show'

  get '/participations/:id/edit' => 'participations#edit'
  patch '/participations/:id' => 'participations#update'

  delete '/participations/:id' => 'participations#destroy'



  get '/saved_challenges' => 'possible_participations#index'

  post '/possible_participations' => 'possible_participations#create'
  
  delete '/possible_participations/:id' => 'possible_participations#destroy'



  get '/comments' => 'comments#index'
  get '/comments/new' => 'comments#new'

  post '/comments' => 'comments#create'

  delete '/comments/:id' => 'comments#destroy'

  get '/images' => 'images#index'
  # namespace :api do 
  #   namespace :v1 do
  #     get ''
  #   end
    
end
