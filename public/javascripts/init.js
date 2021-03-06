  var ui_chat_applet = null;
  var ui_chat_applet_status = null;
  var ui_chat_applet_sliding_pane = null;
  var ui_chat_applet_expanded = null;
  var ui_chat_applet_collapsed = null;
  var ui_chat_applet_friends = null;
  var ui_chat_applet_friend_template = null;

  var ui_chat_applets = null;
  var ui_chat_friends_applet = null;
  var ui_chat_discussion_applet_template = null;

  var ui_chat_messages = null;
  var ui_chat_message_template = null;
  var friends_json = null;
  var chat_initialization = null;

  $(document).ready(function() {
    ui_chat_applet = $('#ChatApplication')
    ui_chat_applet_status = $('.StatusBar', ui_chat_applet)
    ui_chat_applet_sliding_pane = $('.SlidingPane', ui_chat_applet)
    ui_chat_applet_expanded = $('.when-expanded', ui_chat_applet) 
    ui_chat_applet_collapsed = $('.when-not_expanded', ui_chat_applet)
    ui_chat_applet_friends = $('.fl-body .friends', ui_chat_applet)
    ui_chat_applet_friend_template = $('.TEMPLATES li.friend-element', ui_chat_applet)
  
    ui_chat_applets = $('.csb-body > .applets', ui_chat_applet)
    ui_chat_friends_applet = $('.csb-body .FriendsApplet', ui_chat_applet)
    ui_chat_discussion_applet_template = $('.TEMPLATES .DiscussionApplet', ui_chat_applet)

    ui_chat_messages = $('ul.messages')
    ui_chat_message_template = $('.TEMPLATES ul li')
    
    load_friends_json();  
    chat_init();
  });
