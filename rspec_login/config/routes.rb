Rails.application.routes.draw do
  get '/', :controller => 'users', :action => 'index'

  get 'registered', :controller => 'users', :action => 'registered'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
