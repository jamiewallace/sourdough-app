class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to @image, notice: 'Image was successfully saved!'
    else
      flash.now[:alert] = 'Image was not saved!'
      redirect_to @image
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

end