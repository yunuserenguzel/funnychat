class ChatEventController < WebsocketRails::BaseController

  def initialize_session
    controller_store[:active_users] = []
  end

  def create_message
    translated_message = DialectTranslator.translate current_user.dialect_type, message
    new_message text:translated_message, dialect:current_user.dialect_type, username:current_user.name, date:DateTime.now
    trigger_success
  end

  def new_message(data)
    WebsocketRails[:chat].trigger :new_message, data
  end

  def client_connected
    controller_store[:active_users] << current_user
    WebsocketRails.users[current_user.id] = connection
  end

  def delete_user
    controller_store[:active_users].delete(current_user)
    active_users
  end

  def active_users
    active_users = controller_store[:active_users]
    # WebsocketRails[:chat].trigger :active_users, active_users
    # puts "users: #{WebsocketRails.users.to_json}"
    WebsocketRails[:chat].trigger :active_users, active_users
    trigger_success
  end

  def ring_bell
    local_connection = WebsocketRails.users[message]
    local_connection.connections.first.send_message :ring_bell, {user:current_user,date:DateTime.now}
    trigger_success
  end

end