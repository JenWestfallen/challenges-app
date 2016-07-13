class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def new
  @comment = Comment.new
  # @challenge = Challenge.find(params[:challenge_id])
end

def create
  @comment = Comment.new(message: params[:message])

  if @comment.save
      
        Comment.create(
          # challenge_id: comment.challenge.id, 
          user_id: current_user.id
          )

      flash[:success]="Comment Saved" 

      redirect_to "/comments/#{@comment.id}"
    else
      redirect_to "/challenges"
    end
end

def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    flash[:warning]="Comment Deleted"

    redirect_to "/challenges"
end

end
