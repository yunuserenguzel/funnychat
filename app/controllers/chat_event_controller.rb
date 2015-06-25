class ChatEventController < WebsocketRails::BaseController

  def initialize_session
    controller_store[:active_users] = []
  end

  def create_message
    user_dialect_type = session[:user_dialect]
    translated_message = DialectTranslator.translate user_dialect_type, message
    new_message text:translated_message, dialect:user_dialect_type, username:session[:username]
    trigger_success
  end

  def new_message(data)
    WebsocketRails[:chat].trigger :new_message, data
  end

  def client_connected
    controller_store[:active_users] << session
    trigger_success
  end

  def delete_user
    controller_store[:active_users].delete(session)
    active_users
    trigger_success
  end

  def active_users
    active_users = controller_store[:active_users].map { |session| session[:username] }
    WebsocketRails[:chat].trigger :active_users, active_users
  end

end
