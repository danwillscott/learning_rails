class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new

  end

  def delete
    user_id = params[:id].to_i
    if User.exists?(user_id)
      User.find(user_id).destroy
      redirect_to '/'
    else
      redirect_to '/'
    end


  end

  def add
    user = User.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email])

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
      redirect_to '/new'
    end
  end

  def find
    search_name = params[:search].capitalize!
    puts search_name
    if User.find_by_first_name(search_name)
      @users = User.all
      @users = @users.where(first_name:search_name)
    elsif User.find_by_last_name(search_name)
      @users = User.all
      @users = @users.where(last_name:search_name)
    elsif User.exists?(email: search_name)
      @users = User.all
      @users = @users.where(email:search_name)
    else
      flash[:not_found] = "Couldn't find user #{search_name}"
      redirect_to '/'
    end

  end

end
