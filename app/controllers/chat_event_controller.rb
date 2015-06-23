class ChatEventController < WebsocketRails::BaseController

  def initialize_session
    controller_store[:active_users] = []
  end

  def create_message
    # send_message :new_message, {text:message, dialect:session[:user_dialect], username:session[:username]}
    user_dialect_type = session[:user_dialect]
    translated_message = DialectTranslator.translate user_dialect_type, message
    WebsocketRails[:chat].trigger :new_message, {text:translated_message, dialect:user_dialect_type, username:session[:username]}
  end

  def client_connected
    controller_store[:active_users] << session
  end

  def delete_user
    controller_store[:active_users].delete(session)
    active_users
  end

  def active_users
    active_users = controller_store[:active_users].map { |session| session[:username] }
    # active_users = controller_store[:active_users]
    WebsocketRails[:chat].trigger :active_users, active_users
  end

end
