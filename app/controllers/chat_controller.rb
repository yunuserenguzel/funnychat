class ChatController < ApplicationController

  def index
    if session[:user]
      redirect_to :chat
    else
      @dialect_choices = DialectType.all
    end
  end

  def chat
    if !session[:user]
      redirect_to :index
    end
  end

  def register
    user = User.new
    user.username = params[:username]
    user.dialect = params[:dialect]
    session[:user] = user
    redirect_to :chat
  end

end
