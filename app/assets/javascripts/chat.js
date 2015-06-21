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

var Chat = {
  startChat: function () {
    Chat.dispatcher = new WebSocketRails('localhost:3000/websocket');
    Chat.dispatcher.on_open = Chat.onOpen;
    Chat.dispatcher.bind('new_message',Chat.onMessageReceived);
  },
  sendMessage: function (text) {
    Chat.dispatcher.trigger('create_message',text);
  },
  onMessageReceived: function (data) {
    console.log(data);

  },
  appendMessage: function(message) {
    var text = document.createElement('div');
    $(text).html('<p>'+message.text+'</p>');
    $('#chat-area').append(text);
    $("#chat-area").animate({ scrollTop: 500 }, 1000);

  },
  onOpen: function (data) {
    console.log(data);
  }

}


