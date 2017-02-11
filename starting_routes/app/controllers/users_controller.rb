class UsersController < ApplicationController

  def index
    @index_data = 'is the session id'
  end

  def new
    @data = 'Hello CodingDojo!'
    session[:id] += rand 1000
  end

  def reset
    session.destroy
    redirect_to '/'
  end

  def add
    if session[:id]
      session[:id] += 100
    else
      session[:id] = 1
    end
    redirect_back fallback_location:'/'
  end

end
