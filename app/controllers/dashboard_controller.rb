class DashboardController < ApplicationController

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def index
    # go to the index page that lists the quizzes
    
  end

  def speaker
    # @user = User.find(params[:name])
    
  end

  def login

  end

  def create
    @user = User.find_by(name: params[:name])

    if @user == nil
      new_user = User.new
      new_user.name = params[:name]
      new_user.password = params[:password]
      new_user.speaker? == false
      new_user.save

      session[:user_id] = new_user.id
      redirect_to '/'
    
    elsif @user.speaker? == true
      session[:user_id] = @user.id
      redirect_to "/speaker/#{ @user.id }"
      
    elsif @user.speaker? == false
      session[:user_id] = @user.id
      redirect_to '/'
    end

  end

end
