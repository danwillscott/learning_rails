class GoldNinjasController < ApplicationController
  def index
    set_session
  end

  def reset
    session.clear
    redirect_to '/'
  end

  def gold
    gold_amount params[:gold].to_i
    redirect_to '/'
  end

  private
  def gold_amount(data)
    time = Time.now
    time1 = time.strftime('%b %d, %Y')
    time2 = time.strftime('%I:%M %p')
    case
      when data == 1
        num = Random.rand(10..20)
        session[:gold] += num
        session[:activity].push("You Farmed and Gained #{num} Gold!  : #{time1} #{time2}")
      when data == 2
        num = Random.rand(5..10)
        session[:gold] += num
        session[:activity].push("You Found #{num} Gold in a cave!  : #{time1} #{time2}")
      when data == 3
        num = Random.rand(2..5)
        session[:gold] += num
        session[:activity].push("You Found #{num} Gold cleaning the house  : #{time1} #{time2}")
      when data == 4
        if Random.rand(1..2) == 1
          session[:gold] += 50
          session[:activity].push("You won 50 Gold in the casino! : #{time1} #{time2}")
        else
          session[:gold] -= 50
          session[:activity].push("You LOST 50 Gold in the casino You need help!! : #{time1} #{time2}")
        end
      else flash[:error] = "Don't change post data 1-4 are acceptable not #{data}"

    end
  end

  def set_session
    session[:activity] = [] unless session[:activity].present?
    session[:gold] = 50 unless session[:gold].present?
  end
end
