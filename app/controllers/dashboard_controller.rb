class DashboardController < ApplicationController

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def index
    # go to the index page that lists the quizzes
    
  end

  def speaker
    # @user = User.find(params[:name])
    @user = User.find_by(id: session[:user_id])
    @quiz = Quiz.
  end

  def login
    # takes to login form
  end

  def create_session
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

  def enable_quiz
    speaker = User.find_by(id: session[:user_id])
    
  end

end
