Rails.application.routes.draw do

  devise_for :users
  root to: 'challenges#index'

  get '/challenges' => 'challenges#index'
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
end
