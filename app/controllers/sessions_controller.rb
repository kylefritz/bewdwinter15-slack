class SessionsController < ApplicationController
  def show
  end

  def create
    session[:user_id] = params[:user_id]

    redirect_to root_path, notice: 'Your logged in'
    # redirect_to '/'
    # redirect_to [:session, ]
    # redirect_to user
  end
end
