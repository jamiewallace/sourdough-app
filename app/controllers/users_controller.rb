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
    if @user.save
      redirect_to @user, notice: 'Success!'
    else
      flash.now[:alert] = 'Unsuccessful sign up!'
    redirect_to :index
    end
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