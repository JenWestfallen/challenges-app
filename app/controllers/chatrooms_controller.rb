class ChatroomsController < ApplicationController
  

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find_by(id: params[:id])
    @messages = Message.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(
      topic: params[:topic]
      )

    if @chatroom.save
      flash[:success]="Chatroom Created"

      redirect_to "/chatrooms/#{@chatroom.id}"
    else
      render :new
    end
  end

end
