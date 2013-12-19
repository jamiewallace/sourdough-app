$(function() {

  var $messageContainer = $('#inbox-message-container');

  function getConversation(url) {
    $.get(url, function(data) {
      $messageContainer.html(data);
      listenForThreadEvents();
    })
  }

  $('.inbox-conversation-link').on('click', function(event) {
    event.preventDefault();

    var $this = $(this);
    var url = $this.attr('href');

    var $inboxConversationCounter = $this.children(".inbox-conversation-counter");
    var counter = parseInt($inboxConversationCounter.html());
    $inboxConversationCounter.html("0");

    var $globalCounter = $(".global-counter");
    var globalCounterValue = parseInt($globalCounter.html());
    globalCounterValue -= counter

    var notificationMessage = globalCounterValue == 1 ? " new message" : " new messages"
    $globalCounter.html(globalCounterValue + notificationMessage);

    getConversation(url);
  });

  function sendMessage(formData) {
    route = /profile=true/.test(formData) ? "/messages.json" : "/messages"
    $.post(route, formData, function(data) {
      $('#message_content').val('');
      $(data).hide().appendTo($('#message-thread')).slideDown();
    })
  }

  function removeMessageEle() {
    $('.pending-delete').slideUp('fast', function() {
      $(this).remove;      
    })
  }

  function deleteMessage(url) {
    $.ajax({
      url: url,
      type: 'DELETE',
      success: removeMessageEle
    });
  }

  function listenForThreadEvents() {
    $('#new_message').submit(function(event) {
      event.preventDefault();
      var data = $(this).serialize();
      sendMessage(data);
    })

    $('.delete-message').on('click', function(event) {
      event.preventDefault();

      var $this = $(this);
      var url = $this.attr('href');
      $this.parent().addClass('pending-delete');

      deleteMessage(url);
    })
  }

  listenForThreadEvents();

  //if we are on a profile page , we need to call the javascript functions
  if($("#new-message-profile").length > 0) listenForThreadEvents()
})