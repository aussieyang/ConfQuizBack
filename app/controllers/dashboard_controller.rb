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
    # @user_id = @user.id
    if @user && @user.authenticate(params[:password])

    
      if @user.speaker? == true
        session[:user_id] = @user.id
        redirect_to '/speaker/#{ @user.id }'
      else
        # Need to enable sessions here
        session[:user_id] = @user.id
        redirect_to '/'
      end

    else
      redirect_to :back

    end

  end

end
