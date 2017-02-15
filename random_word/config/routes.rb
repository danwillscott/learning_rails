Rails.application.routes.draw do
  root 'random_words#index'

  get '/', :controller => 'random_words', :action => 'index'
  get '/clear', :controller => 'random_words', :action => 'clear'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
