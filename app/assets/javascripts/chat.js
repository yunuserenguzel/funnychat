function initializeChat(){
  $(document).ready(function () {
    Chat.startChat();
    Chat.onMessageReceived(null);
  });
}

var Chat = {
  startChat: function () {
    Chat.dispatcher = new WebSocketRails('localhost:3000/websocket');
    Chat.dispatcher.on_open = Chat.onOpen;
  },
  sendMessage: function (text) {

  },
  onMessageReceived: function (data) {
    var text = document.createElement('div');
    $(text).html('<p>TEXT</p>');
    $('#chat-area').append(text);
    $("#chat-area").animate({ scrollTop: 500 }, 1000);
  },
  onOpen: function (data) {
    console.log(data);
  }

}


