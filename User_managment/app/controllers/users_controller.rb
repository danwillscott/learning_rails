class UsersController < ApplicationController
  def index # Home page with all users
    @users = User.all
    session[:search] = nil
  end

  def show
    @user = User.find(params[:id])
  end

  def delete_user
    user = User.delete_user(params)
    flash[:deleted] = user
    redirect_to '/'
  end

  def new_user # Post route for new user
    user = User.new_user(params)
    if user.save
      redirect_to '/'
    else
      err = user.errors
      if err[:first_name] and err[:first_name] != []
        flash[:first_name] = "First Name #{err[:first_name][0]}"
      end
      if err[:last_name] and err[:last_name] != []
        flash[:last_name] = "Last Name #{err[:last_name][0]}"
      end
      if err[:email] and err[:email] != []
        flash[:email] = "Email #{err[:email][0]}"
      end
      if err[:password] and err[:password] != []
        flash[:password] = "Password #{err[:password][0]}"
      end
      redirect_to :back
    end
    end

  def edit
    @user_edit = User.find(params[:id])
    # render 'edit.html.erb'
  end

  def edit_user
    user = User.update_user(params)
    if user.save
      redirect_to :back
    else
      err = user.errors
      if err[:first_name] and err[:first_name] != []
        flash[:first_name] = "First Name #{err[:first_name][0]}"
      end
      if err[:last_name] and err[:last_name] != []
        flash[:last_name] = "Last Name #{err[:last_name][0]}"
      end
      if err[:email] and err[:email] != []
        flash[:email] = "Email #{err[:email][0]}"
      end
      if err[:password] and err[:password] != []
        flash[:password] = "Password #{err[:password][0]}"
      end
      redirect_to :back
    end
  end
end

#         ***** SLUDGE FIELD *****




# def search
#   unless session[:search]
#     search_name = params[:search]
#     puts search_name
#     if User.find_by_first_name(search_name.capitalize!)
#       session[:search] = User.all
#       session[:search] = session[:search].where(first_name:search_name.capitalize!)
#       redirect_to 'find'
#     elsif User.find_by_last_name(search_name.capitalize!)
#       session[:search] = User.all
#       session[:search] = session[:search].where(last_name:search_name.capitalize!)
#       redirect_to 'find'
#     elsif User.exists?(email: search_name)
#       session[:search] = User.all
#       session[:search] = session[:search].where(email:search_name)
#       redirect_to 'find'
#     else
#       flash[:not_found] = "Couldn't find user #{search_name}"
#       redirect_to '/'
#     end
#   end
# end

# def add
#   user = User.new_user(params)
#   # user = User.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email])
#
#   if user.save
#     redirect_to '/'
#   else
#     err = user.errors
#     if err[:first_name] and err[:first_name] != []
#       flash[:first_name] = "First Name #{err[:first_name][0]}"
#     end
#     if err[:last_name] and err[:last_name] != []
#       flash[:last_name] = "Last Name #{err[:last_name][0]}"
#     end
#     if err[:email] and err[:email] != []
#       flash[:email] = "Email #{err[:email][0]}"
#     end
#     redirect_to '/new'
#   end
# end

