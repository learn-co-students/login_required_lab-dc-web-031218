class SecretsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :require_login, only: [:show]




  private

  def require_login
    redirect_to '/login' unless current_user
  end

end
