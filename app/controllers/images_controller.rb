class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(url: params[:url])

    if @image.save     
      flash[:success]="Image Saved"
      redirect_to "/images/#{@image.id}"
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