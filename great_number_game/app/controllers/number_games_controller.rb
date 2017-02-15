class NumberGamesController < ApplicationController
  def index
    set_session
  end

  def guess
    check_guess params[:guess]
    redirect_to '/'
  end

  def reset
    session.clear
    redirect_to '/'
  end

  private
  def set_session
    session[:number] = Random.rand(1..100) unless session[:number]
  end

  def check_guess data
    if params[:guess].to_i == session[:number]
      session[:win] = true
      flash[:low_high] = "You win! The number was #{session[:number]}"
    elsif params[:guess].to_i > session[:number]
      puts params[:guess], 'TO HIGH!'
      flash[:low_high] = "#{params[:guess]} is to high!"
    elsif params[:guess].to_i < session[:number]
      puts params[:guess], 'TO LOW!'
      flash[:low_high] = "#{params[:guess]} is to low!!"
    end
  end

end
