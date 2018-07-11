Rails.application.routes.draw do
  get '/index' => 'users#index'

  get '/new' => 'users#new'
  post '/userinfo' => 'users#create'

  get '/userinfo/:id' => 'users#show'


  get '/hereinfo/edit' => 'users#edit', as: :hereinfo_edit
  get '/userinfo/:id/edit' => 'users#edit'
  patch '/userinfo/:id' => 'users#update'

  delete '/user/:id' => 'users#destroy'
#====================================================
  # get '/hereinfo' => 'here_params#new'
  # post '/hereinfo' => 'here_params#create'

  # get 'hereinfo/:id' => 'here_params#show'

  # patch '/hereinfo/:id' => 'here_params#update'

  # delete '/hereinfo/:id' => 'here_params#delete'
#====================================================
  get '/' => 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

end
