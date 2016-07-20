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
    @image = Image.create(
      file: params[:file],
      user_id: params[:user_id]
      )
      
      flash[:success]="Image Saved"
      redirect_to "/images/"
   
  end





  def destroy
    @image = Image.find(params[:id])
    @image.file = nil
    @image.save
    @image.destroy

    flash[:warning]="Image Deleted"

    redirect_to "/images"
  end

end