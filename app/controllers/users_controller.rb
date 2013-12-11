class UsersController < Devise::RegistrationsController

  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to @user
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    redirect_to :root
  end

end