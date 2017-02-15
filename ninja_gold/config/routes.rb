Rails.application.routes.draw do
  get 'gold_ninjas/index'

  get '/', :controller => 'gold_ninjas', :action => 'index'

  get '/rest', :controller => 'gold_ninjas', :action => 'reset'

  post 'gold', :controller => 'gold_ninjas', :action => 'gold'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
