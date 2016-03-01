class Api::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions, status: 200
  end

  def show
    @questions = Question.find(params[:id])
    render json: @questions, status: 200
  end

end
