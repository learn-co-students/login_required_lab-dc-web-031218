class SessionsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def create
    puts params[:name]
    redirect_to '/login' and return if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete(:name)
    redirect_to '/'
  end


end
