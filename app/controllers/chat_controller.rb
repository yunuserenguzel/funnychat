class ChatController < ApplicationController

  def index
    if current_user
      redirect_to action: :chat
    else
      @dialect_choices = DialectType.all
    end
  end

  def chat
    if !current_user
      redirect_to action: :index
    else
      @username = current_user.name
    end
  end

  def register
    session[:current_user] = User.new(id: SecureRandom.uuid, name: params[:username], dialect_type: params[:dialect]).to_json
    redirect_to action: :chat
  end

  def logout
    reset_session
    redirect_to action: :register
  end

end
