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
end
