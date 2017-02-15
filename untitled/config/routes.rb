Rails.application.routes.draw do
  get '/', :controller => 'surveys', :action => 'home'

  post 'add', :controller => 'surveys', :action => 'add'

  get 'delete:id', :controller => 'surveys', :action => 'delete'

  get '/new', :controller => 'surveys', :action => 'complete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
