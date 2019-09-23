class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to '/'
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
      redirect_to '/'
  end
end
