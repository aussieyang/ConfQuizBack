class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @quizzes = User.find(params[:id])
    render json: @users, status: 200
  end

end
