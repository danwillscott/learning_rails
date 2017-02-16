Rails.application.routes.draw do
  # todo When someone goes to "http://localhost", it should be routed to the Dojos controller, index method.
  get '/', :controller => 'dojo', :action => 'index'

  # todo When someone posts to "http://localhost/hello', it should be routed to the Dojos controller, world method.
  get 'hello', :controller => 'dojo', :action => 'world'

  # todo When someone goes to "http://localhost/ninjas", it should be routed to the Dojos Controller, ninjas method.
  get 'ninjas', :controller => 'dojo', :action => 'ninjas'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
