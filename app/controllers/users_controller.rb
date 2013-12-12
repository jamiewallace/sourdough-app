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
    redirect_to '/users'
    end
  end

  def show
    @user = User.find(params[:id])
    @image = Image.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    redirect_to :root
  end

  def search
    if params[:type] == "give"
      # look for users who NEED
      @users = User.where(give_take: "take")
    elsif params[:type] == "take"
      # look for users who GOT
      @users = User.where(give_take: "give")
    end
  end
end