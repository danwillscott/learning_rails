Rails.application.routes.draw do
  # index page
  get '/', :controller => 'products', :action => 'index'

  # show a product
  get 'show:id', :controller => 'products', :action => 'show'

  # new product form
  get 'new', :controller => 'products', :action => 'new'

  # edit product form
  get 'edit:id', :controller => 'products', :action => 'edit'

  # all comments page
  get 'comments', :controller => 'products', :action => 'comments'

  # post a new comment
  post 'new_comment:id', :controller => 'products', :action => 'new_comment'

  # create new product
  post 'new_product', :controller => 'products', :action => 'new_product'

  # updating product
  patch 'update_product:id', :controller => 'products', :action => 'update_product'

  # deleting product
  delete 'delete_product:id', :controller => 'products', :action => 'delete_product'

  # deleting comment
  delete 'delete_comment:id', :controller => 'products', :action => 'delete_comment'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
