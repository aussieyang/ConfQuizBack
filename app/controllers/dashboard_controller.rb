class DashboardController < ApplicationController

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
    if @user.speaker? == true
      redirect_to '/speaker/#{ @user.id }'
    else
      # Need to enable sessions here
      redirect_to '/'
    end

  end

end
