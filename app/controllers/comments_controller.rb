class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def new
  @comments = Comment.new
end

def create
  @comment = Comment.new(message: params[:message])

  if @comment.save
      @comment_array = params[:comment]

      @comment_array.each do |comment_num|
        Comment.create(
          challenge_id: @challenge.id, 
          user_id: comment_num.to_i
          )
      end
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
