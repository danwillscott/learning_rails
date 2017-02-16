class NinjasController < ApplicationController
  def index

  end

  def new

  end

  def new_post
    ninja = Ninja.new(name: params[:name], description: params[:description])
    if ninja.save
      flash[:message] = 'Form submitted'
      redirect_to '/new'
    else
      flash[:message] = ninja.errors.full_messages
      redirect_back(fallback_location: :back)
    end
  end
end
