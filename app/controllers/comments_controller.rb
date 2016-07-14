class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def new
  @comment = Comment.new
  # @challenge = Challenge.find(params[:challenge_id])
end

def create
  @comment = Comment.new(
    message: params[:message],
    user_id: params[:user_id]
    )
  if @comment.save
      flash[:success] = "Comment Saved" 
      redirect_to "/challenges/landing#comments-list"
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
