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
    @ref_user_id = params[:ref_user_id]
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    ref_user_id = params[:ref_user_id]

    if @user.save
      sign_in(:user, @user)

      if ref_user_id
        redirect_to User.find(ref_user_id)
      else
        redirect_to @user, notice: 'Success!'
      end
    else
      flash.now[:alert] = 'Unsuccessful sign up!'
      redirect_to '/users'
    end
  end

  def show
    @user = User.find(params[:id])
    @image = Image.new

    if current_user
      @message_thread  = current_user.messages_with_user @user.id
      @new_message     = current_user.messages_sent.new(recipient_id: @user.id)
    end
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

    @users = User.where(have_need: @type)
    
    @users_distance = {}
    @users.each do |user|
      @users_distance[user] = user.distance_to(@address)
    end

    @users_distance = @users_distance.sort_by {|k,v| v.to_s}  # sort users by distance
    @users_distance = @users_distance[0, 5]  # take only the first 5 users (the 5 closest)
    @users_distance = Hash[@users_distance]  # convert to hash

    @user_json = @users_distance.keys.map {|u| UserSerializer.new(u, root: false)}.to_json
  end
end