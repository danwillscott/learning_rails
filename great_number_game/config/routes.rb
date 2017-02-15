Rails.application.routes.draw do
  get 'number_games/index'

  get '/', :controller => 'number_games', :action => 'index'

  post '/guess', :controller => 'number_games', :action => 'guess'

  get '/reset', :controller => 'number_games', :action => 'reset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
