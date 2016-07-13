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
    @image = Image.new(url: params[:url])

    if @image.save

      @image_array = params[:image]

      @image_array.each do |image_num|
        Image.create(
          challenge_id: @challenge.id, 
          image_id: category_num.to_i
          )
      
      flash[:success]="Image Saved"
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