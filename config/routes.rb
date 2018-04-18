Rails.application.routes.draw do
  get '/index' => 'users#index'

  get '/new' => 'users#new'
  post '/userinfo' => 'users#create'

  get '/userinfo/:id' => 'users#show'

  get '/userinfo/:id/edit' => 'users#edit'
  patch '/userinfo/:id' => 'users#update'

  get '/hereinfo/:id' => 'users#addhereinfo'
  patch '/hereinfo/:id' => 'users#updatehereinfo'

  delete '/user/:id' => 'users#destroy'

end
