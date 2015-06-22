MAX_INT = 9007199254740992;
function initializeChat(){
  $(document).ready(function () {
    Chat.startChat();
    $('#chat-input input').focus();
  });
}

function keyPressed(event,input){
  if(event.charCode == 13) {
    Chat.sendMessage(input.value)
    input.value = '';
  }
}
function appendMessage(message){
  var messageElement = document.createElement('div');
  messageElement.className = 'chat-message';
  var userHolder = document.createElement('div');
  userHolder.className = 'chat-message-user-holder';
  $(userHolder).append('<img class="chat-message-icon" src="/images/'+message.dialect+'_icon.png">')
  $(userHolder).append('<p class="chat-message-username">'+message.username+'</p>');
  $(messageElement).append(userHolder);
  $(messageElement).append('<p class="chat-message-text">'+message.text+'</p>');
  $('#chat-area').append(messageElement);
  $("#chat-area").animate({ scrollTop: $('#chat-area').get(0).scrollHeight }, 500);
}

var Chat = {
  startChat: function () {
    Chat.dispatcher = new WebSocketRails(location.host + '/websocket');
    Chat.dispatcher.on_open = Chat.onOpen;
    Chat.channel = Chat.dispatcher.subscribe('chat');
    Chat.channel.bind('new_message',Chat.onMessageReceived);
    Chat.channel.bind('users_updated', Chat.onUserListUpdated())
  },
  sendMessage: function (text) {
    Chat.dispatcher.trigger('create_message',text);
  },
  onMessageReceived: function (message) {
    console.log(message);
    appendMessage(message);
  },
  onOpen: function (data) {
    console.log(data);
  },
  onUserListUpdated: function (users) {
    for(var i=0; i<users.length;i++) {

    }
  }

}


