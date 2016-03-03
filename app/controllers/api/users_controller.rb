class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @users = User.find(params[:id])
    render json: @users, status: 200
  end

# need to pass current_user.id into find() and have params in view
  def score
    user = User.find(params[:id])
    user.score = user.score + params[:score].to_i
    user.save
  end



end
