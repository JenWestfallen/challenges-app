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
  get '/comments/new' =>'comments#new'
  # get '/challenges/:challenge_id/comments/new' => 'comments#new'

  post '/comments' => 'comments#create'

  delete '/comments/:id' => 'comments#destroy'

  get '/images' => 'images#index'
  get '/images/new' => 'images#new'

  post '/images' => 'images#create'
  get '/images/:id' => 'images#show'

  get '/images/:id/edit' => 'images#edit'

  delete '/images/:id' => 'images#destroy'
  
  get '/chatrooms' => 'chatrooms#index'
  get '/chatrooms/new' => 'chatrooms#new'

  post '/chatrooms' => 'chatrooms#create'
  get '/chatrooms/:id' => 'chatrooms#show'

  delete '/chatrooms/:id' => 'chatrooms#destroy'

  get '/messages' => 'messages#index'
  get '/messages/new' => 'messages#new'

  post '/messages' => 'messages#create'
  get '/messages/:id' => 'messages#show'

  delete '/messages/:id' => 'messages#destroy'


  #websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :chatrooms, param: :id
  resources :messages


  namespace :api do
    namespace :v1 do 
      get '/challenges' => 'challenges#index'
      post 'challenges' => 'challenges#create'
      get '/challenges/:id' => 'challenges#show'
    end
  end
end
    

