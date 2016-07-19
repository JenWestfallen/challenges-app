# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chatroom = App.cable.subscriptions.create "ChatroomChannel", 
connected: -> 
# Called when the subscription is ready for use on the server 
disconnected: -> 
# Called when the subscription has been terminated by the server 
received: (data) -> 
  $('form').append('<p>' + data['message'] + '</p>')
  # alert(data['message'])
# Called when there's incoming data on the websocket for this channel 
speak: (message) -> 
  @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return/enter = send
    App.chatroom.speak event.target.value
    event.target.value = ''
    event.preventDefault()

