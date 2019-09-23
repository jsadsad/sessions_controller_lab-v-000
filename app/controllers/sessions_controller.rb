class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:username]
    redirect to '/'
  end

  def destroy
  end
end
