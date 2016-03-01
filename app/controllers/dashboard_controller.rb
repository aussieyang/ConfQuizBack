class DashboardController < ApplicationController

  def index
    # go to the index page that lists the quizzes
    
  end

  def speaker
    @user = User.find(params[:name])
    
  end

  def login

  end

  def session
    @user = User.find(params[:name])
    if @user.where(speaker? == true)
      redirect_to '/speaker/#{ params[:id] }'
    end

  end

end
