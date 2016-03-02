class SessionController < ApplicationController

  def index
    # go to the index page that lists the quizzes
  end


  def speaker
    # @user = User.find(params[:name])
    @user = User.find_by(id: session[:user_id])
  end


  def login
    # takes to login form
  end

  # Need to fix it so that speakers can take quizzes
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

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  def enable_quiz
    users_name = current_user.name
    speaker = Quiz.find_by(speaker: users_name)
    speaker.enabled = true
    speaker.save

    redirect_to '/'    

  end

end
