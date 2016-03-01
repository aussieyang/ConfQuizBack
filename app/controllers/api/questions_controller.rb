class Api::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions, status: 200
  end

  def quiz
    @questions = Question.find(params[:quiz_id])
    render json: @questions, status: 200
  end

end
