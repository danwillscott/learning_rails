class ProductsController < ApplicationController
  def index #  landing page
    @products = Product.all
    @nav_bar = 'Product Management'
  end

  def new #  render page for new comment form
    @nav_bar = 'Make A New Comment'
  end

  def comments #  render page for all comments
    @comments = Comment.all
    @nav_bar = 'View All Comments'
  end

  def show #  render page for a single product
    @product = Product.find(params[:id]) # todo commented till
    puts params[:id]
    @nav_bar = "View Product '#{@product.name}'"
    @comments = Comment.all.where(product: @product)
  end

  def edit # render page form edit product
    @product = Product.find(params[:id]) # todo commented till
    # @product = Product.first
    @nav_bar = "Edit product '#{@product.name}'"
  end

  def new_product # Post for New product
    product = Product.new_product(params)
    if product.save
      redirect_to '/'
    else
      err = product.errors
      if err[:name] and err[:name] != []
        flash[:name] = "First Name #{err[:name][0]}"
      end
      if err[:category] and err[:category] != []
        flash[:category] = "Last Name #{err[:category][0]}"
      end
      if err[:description] and err[:description] != []
        flash[:description] = "Email #{err[:description][0]}"
      end
      if err[:price] and err[:price] != []
        flash[:price] = "Password #{err[:price][0]}"
      end
      redirect_to :back
    end
  end

  def new_comment # post for new comment
    product = Product.find(params[:id])
    comment = Comment.new(product: product, comment: params[:comment])
    if comment.save
      comment.save
      redirect_to :back
    else
      flash[:comment] = "Comment  #{comment.errors[:comment][0]}"
      redirect_to :back
    end
  end

  def update_product # patch for updating product
    product = Product.update_product(params)
    if product.save
      redirect_to :back
    else
      err = product.errors
      if err[:name] and err[:name] != []
        flash[:name] = "First Name #{err[:name][0]}"
      end
      if err[:category] and err[:category] != []
        flash[:category] = "Last Name #{err[:category][0]}"
      end
      if err[:description] and err[:description] != []
        flash[:description] = "Email #{err[:description][0]}"
      end
      if err[:price] and err[:price] != []
        flash[:price] = "Password #{err[:price][0]}"
      end
      redirect_to :back
    end
  end

  def delete_comment # delete for deleting comment
    comment = Comment.find(params[:id])
    @deleted = comment.destroy
    redirect_to :back
  end

  def delete_product # delete for deleting product
    product = Product.find(params[:id])
    @deleted = product.destroy

    redirect_to '/'
  end
end
