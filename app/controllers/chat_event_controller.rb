class ChatEventController < WebsocketRails::BaseController

  def create_message
    send_message :new_message, {text:message, dialect:session[:user_dialect], username:session[:username]}
  end

end
