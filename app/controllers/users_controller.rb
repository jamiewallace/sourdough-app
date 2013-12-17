class UsersController < Devise::RegistrationsController

  before_filter :authenticate_user!

  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users, root: false }
    end
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
    @new_message = Message.new(recipient_id: params[:id])
    @new_message.sender_id = current_user.id if user_signed_in?
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to current_user
    else
      render :edit
    end
  end

  def destroy
    redirect_to :root
  end

  def search
    @address = params[:address]

    @type = params[:type]
    if @type == "have"
      # look for users who NEED
      @users = User.where(have_need: "have")
    elsif params[:type] == "need"
      # look for users who GOT
      @users = User.where(have_need: "need")
    end

    @users_distance = {}
    @users.each do |user|
      @users_distance[user] = user.distance_to(@address)
    end

    @users_distance = @users_distance.sort_by {|k,v| v.to_s}  # sort users by distance
    @users_distance = @users_distance[0, 5]  # take only the first 5 users (the 5 closest)
    @users_distance = Hash[@users_distance]  # convert to hash

    @user_json = @users.map {|u| UserSerializer.new(u, root: false)}.to_json
  end
end