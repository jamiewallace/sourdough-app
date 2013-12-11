class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(params[:image])
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end