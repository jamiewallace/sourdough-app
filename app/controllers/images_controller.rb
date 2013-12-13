class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
    redirect_to :user
  end

  def create
    @image = Image.new(params[:image])
    @image.user = current_user



    #current_user.images.build(params[:image])


    if @image.save
      redirect_to current_user, notice: 'Image was successfully saved!'
    else
      flash.now[:alert] = 'Image was not saved!'
      redirect_to :index
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