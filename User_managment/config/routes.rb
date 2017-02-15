Rails.application.routes.draw do
  get '/', :controller => 'users', :action => 'index'
  get 'someplace', :controller => 'users', :action => 'someplace'
  get 'new', :controller => 'users', :action => 'add_user'
  get 'show:id', :controller => 'users', :action => 'show'
  get 'edit:id', :controller => 'users', :action => 'edit'
  post 'new_user', :controller => 'users', :action => 'new_user'
  patch 'user_edit', :controller => 'users', :action => 'edit_user'
  delete 'delete:id', :controller => 'users', :action => 'delete_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

