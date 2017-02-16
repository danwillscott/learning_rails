Rails.application.routes.draw do
  get '/', :controller => 'ninjas', :action => 'index'

  get 'new', :controller => 'ninjas', :action => 'new'

  post 'new_post', :controller => 'ninjas', :action => 'new_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
