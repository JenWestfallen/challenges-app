class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def new
    @image = Image.new
    @challenge = Challenge.find(params[:challenge_id])
  end

  def create
    @image = Image.new(url: params[:url], creator_id: current_user.id)

    if @image.save
      Image.create(
        challenge_id: image.challenge.id
        user_id: current_user.id
        )
      flash[:success]="Image Saved"
    end
      redirect_to "/images/#{@challenge.id}"
    else
      redirect_to "/images"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    flash[:warning]="Image Deleted"

    redirect_to "/images"
  end

end