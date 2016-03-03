class PagesController < ApplicationController

  before_action :authenticate

  def home
    render :home, layout: 'spa'
  end

  private #this make the authenticate method hidden

  def authenticate
    redirect_to '/login' unless logged_in?
  end

end
