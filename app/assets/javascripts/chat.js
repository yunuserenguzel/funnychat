document.title = 'Funny Chat';

function initializeChat() {
  $(document).ready(function () {
    Chat.startChat();
    $('#chat-input').focus();
  });
}

function keyPressed(event,input) {
  if(event.charCode == 13) {
    sendMessage(input);
  }
}
function sendMessage(input) {
  if(input.value.length > 0) {
    input.disabled = true;
    Chat.sendMessage(input.value, function () {
      input.disabled = false;
      input.value = '';
      input.focus();
    }, function () {
      input.disabled = false;
      input.focus();
    });
  }
}

function appendMessage(message) {
  var messageElement = document.createElement('div');
  messageElement.className = 'chat-message';
  var userHolder = document.createElement('div');
  userHolder.className = 'chat-message-user-holder';
  $(userHolder).append('<img class="chat-message-icon" src="/images/'+message.dialect+'_icon.png">')
  $(userHolder).append('<p class="chat-message-username">'+message.username+'</p>');
  $(userHolder).append('<div class="chat-message-time">'+(new Date(message.date)).toLocaleTimeString()+'</div>')
  $(messageElement).append(userHolder);
  $(messageElement).append('<p class="chat-message-text">'+message.text+'</p>');
  $('#chat-area').append(messageElement);
  $("#chat-area").animate({ scrollTop: $('#chat-area').get(0).scrollHeight }, 500);
}

function appendRingBell(data) {
  var ringBellElement = document.createElement('div');
  ringBellElement.className = 'ring-bell-element';
  $(ringBellElement).append(data.name + ' has ringed you!');
  $('#chat-area').append(ringBellElement);
  $("#chat-area").animate({ scrollTop: $('#chat-area').get(0).scrollHeight }, 500);

  document.title = 'Ring!';
  setTimeout(function () {
    document.title = 'Funny Chat';
  },1000)
}

function setUsers(users) {
  $('#user-list').html('');
  for(var i=0; i<users.length;i++) {
    var user = users[i];
    var userElement = document.createElement('div');
    userElement.className = 'user-element';
    $(userElement).append('<button onclick="ringUser(\''+user.id+'\',this)">Ring</button>');
    $(userElement).append('<strong>'+user.name+'</strong>');
    $('#user-list').append(userElement);
  }
}

function ringUser(userId, button) {
  button.disabled = true;
  Chat.sendRingBell(userId, function () {
    button.disabled = false;
  }, function () {
    button.disabled = true;
  });
}

function logout() {
  Chat.close();
  window.location = 'logout';
}

var Chat = {
  startChat: function () {
    Chat.dispatcher = new WebSocketRails(location.host + '/websocket');
    Chat.dispatcher.bind('ring_bell',Chat.onRingBellReceived);
    Chat.dispatcher.on_open = Chat.onOpen;
    Chat.channel = Chat.dispatcher.subscribe('chat');
    Chat.channel.bind('new_message',Chat.onMessageReceived);
    Chat.channel.bind('active_users', Chat.onUserListUpdated);
  },
  sendMessage: function (text,success,failure) {
    Chat.dispatcher.trigger('create_message',text,success,failure);
  },
  onMessageReceived: function (message) {
    console.log(message);
    appendMessage(message);
  },
  onOpen: function (data) {
    Chat.dispatcher.trigger('active_users',null);
  },
  onUserListUpdated: function (users) {
    console.log('active users', users);
    setUsers(users);
  },
  close: function () {
    Chat.dispatcher.disconnect();
  },
  sendRingBell:function(userId,success,error) {
    Chat.dispatcher.trigger('ring_bell',userId, success,error);
  },
  onRingBellReceived: function (data) {
    var audio = new Audio('/Desk-bell-sound.wav');
    console.log(data);
    audio.play();
    appendRingBell(data);
  }

}


