class SurveysController < ApplicationController
  def home

  end

  def complete
    @surveys = Survey.all
  end

  def add
    survey = Survey.new(full_name:params[:full_name], comment:params[:comment], favorite:params[:favorite], location:params[:location])
    puts survey.valid?
    survey.errors.full_messages
    if survey.valid?
      survey.save
      redirect_to '/new'
    else
      redirect_to '/'
    end

  end

  def delete
    survey_id = params[:id].to_i
    if Survey.exists?(survey_id)
      Survey.find(survey_id).destroy
    else
      redirect_to '/new'
    end
    redirect_to '/new'
  end
end
