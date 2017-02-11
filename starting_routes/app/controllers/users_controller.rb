class UsersController < ApplicationController

  def index

    @index_data = 'is the session id'
  end

  def new
    if session[:id]

    @data = 'Hello CodingDojo!'
    session[:id] += rand 1000
    else
      session[:id] = 0
    end
  end

  def reset
    session.destroy
    redirect_to '/'
  end

  def add
    if session[:id]
      session[:id] += params[:num].to_i
    else
      session[:id] = 0
    end
    redirect_to '/'
  end

end
