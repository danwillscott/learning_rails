Rails.application.routes.draw do

  get '/', :controller => 'users', :action => 'index'

  get '/reset', :controller => 'users', :action => 'reset'

  get '/new', :controller => 'users', :action => 'new'

  get '/add', :controller => 'users', :action => 'add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
