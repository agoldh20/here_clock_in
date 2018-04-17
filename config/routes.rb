Rails.application.routes.draw do
  get '/index' => 'users#index'

  get '/user/new' => 'users#new'
  post '/user/' => 'users#create'

  get '/user/:id' => 'users#show'

  get '/user/:id/edit' => 'users#edit'
  patch '/user/:id' => 'users#update'
  patch '/addhereinfo/:id' => 'users#addhereinfo'

  delete '/user/:id' => 'users#destroy'

end
