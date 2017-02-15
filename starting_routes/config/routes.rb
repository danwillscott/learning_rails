Rails.application.routes.draw do

  get '/', :controller => 'users', :action => 'index'

  get 'delete:id', :controller => 'users', :action => 'delete'

  get 'new', :controller => 'users', :action => 'new'

  post 'add', :controller => 'users', :action => 'add'

  post 'find', :controller => 'users', :action => 'find'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
