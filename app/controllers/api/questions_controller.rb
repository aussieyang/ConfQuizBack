class Api::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions, status: 200
  end

  def quiz
    @questions = Question.where('quiz_id = ?', params[:id]).all
    render json: @questions, status: 200
  end

end
