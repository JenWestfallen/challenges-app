class ChatroomChannel < ApplicationCable::Channel 
  def subscribed
    stream_from 'chatroom_channel'
  end

  def unsubscribed

  end

  def speak(data)
    Message.create! content: data['message']
  end
end

