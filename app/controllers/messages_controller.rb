class MessagesController < ApplicationController

  def index
    @message = Message.all
  end

  def show 
    @message = Message.find_by(id: params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(
      content: params[:content],
      user_id: current_user.id,
      chatroom_id: params[:chatroom_id]
      )

    if @message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.email
      head :ok

      flash[:success]="Message Created"

      redirect_to "/messages"
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    flash[:warning]="Message Destroyed"

    redirect_to "/messages"
  end
end
