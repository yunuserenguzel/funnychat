class ChatController < ApplicationController

  def index
    if session[:username]
      redirect_to action: :chat
    else
      @dialect_choices = DialectType.all
    end
  end

  def chat
    if !session[:username]
      redirect_to action: :index
    end
  end

  def register
    session[:username] = params[:username]
    session[:user_dialect] = params[:dialect]
    redirect_to action: :chat
  end

  def logout
    reset_session
    redirect_to action: :register
  end

end
