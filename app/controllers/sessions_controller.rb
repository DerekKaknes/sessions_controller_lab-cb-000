class SessionsController < ApplicationController
  def new
  end

  def create
    if not params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end