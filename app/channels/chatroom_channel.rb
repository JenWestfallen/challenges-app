class ChatroomChannel < ApplicationCable::Channel 
  def subscribed
    stream_from 'chatroom_channel'
  end

  def unsubscribed

  end

  def speak(data)
    ActionCable.server.broadcast "chatroom_channel", message: data['message']
  end
end

