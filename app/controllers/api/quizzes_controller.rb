class Api::QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
    render json: @quizzes, status: 200
  end

  def show
    @quizzes = Quiz.find(params[:id])
    render json: @quizzes, status: 200
  end

end
