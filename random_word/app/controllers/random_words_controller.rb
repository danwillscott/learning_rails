class RandomWordsController < ApplicationController

  def index
    if session[:times]
      session[:times] += 1
    else
      session[:times] = 1
    end
    @ran_word = (0..14).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def clear
    session.clear
    redirect_to '/'
  end

end
