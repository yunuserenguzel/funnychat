MAX_INT = 9007199254740992;
function initializeChat(){
  $(document).ready(function () {
    Chat.startChat();
    Chat.onMessageReceived(null);
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
  $(messageElement).append('<img src="assets/images/'+message.dialect+'_icon.png">')
  $(messageElement).append('<p class="chat-message-text">'+message.text+'</p>');
  $(messageElement).append('<p class="chat-message-username">'+message.username+'</p>');
  $('#chat-area').append(messageElement);
  $("#chat-area").animate({ scrollTop: $('#chat-area').get(0).scrollHeight }, 500);
}

var Chat = {
  startChat: function () {
    Chat.dispatcher = new WebSocketRails(location.host + '/websocket');
    Chat.dispatcher.on_open = Chat.onOpen;
    Chat.channel = Chat.dispatcher.subscribe('chat');
    Chat.channel.bind('new_message',Chat.onMessageReceived);
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
  }

}


