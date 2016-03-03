class SessionController < ApplicationController

  # go to the index page that lists the quizzes
  def index
    @quiz1 = Quiz.find(1)
    @quiz2 = Quiz.find(2)
    @quiz3 = Quiz.find(3)
    @quiz4 = Quiz.find(4)
    @quiz5 = Quiz.find(5)
    @quiz6 = Quiz.find(6)

  end

  def speaker
    # need to compare the usernames of the session and the quiz id name of the params
    raise
    if current_user.id == params[:id].to_i

    else
      redirect_to '/'
      
    end

  end

  # activating the quiz in quizzes
  def enable_quiz
    users_name = current_user.name
    speaker = Quiz.find_by(speaker: users_name)
    speaker.enabled = true
    speaker.save

    redirect_to '/'    

  end

  # takes to login form
  def login

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

    else 
      session[:user_id] = @user.id
      redirect_to '/'

    end

  end

  # logout for testing
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
