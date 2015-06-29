class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:current_user]
      User.new(JSON.parse(session[:current_user], symbolize_names: true))
    end
  end
end
