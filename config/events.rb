WebsocketRails::EventMap.describe do

  subscribe :create_message, 'chat_event#create_message'
  subscribe :client_connected, 'chat_event#client_connected'
  subscribe :client_disconnected, 'chat_event#delete_user'
  subscribe :connection_closed, 'chat_event#delete_user'
  subscribe :active_users, 'chat_event#active_users'
  subscribe :ring_bell, 'chat_event#ring_bell'
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.

end
