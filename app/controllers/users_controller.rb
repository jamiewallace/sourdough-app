class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user_id])
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