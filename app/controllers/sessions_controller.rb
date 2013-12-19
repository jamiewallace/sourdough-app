class SessionsController < Devise::SessionsController
  def new
    @ref_user_id = params[:ref_user_id]
  end

  def create
    ref_user_id = params[:ref_user_id]
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")

    if is_navigational_format?
      if resource.sign_in_count == 1
        set_flash_message(:notice, :signed_in_first_time)
      else
        set_flash_message(:notice, :signed_in)
      end
    end

    sign_in(resource_name, resource)

    if ref_user_id
      redirect_to User.find(ref_user_id)
    else
      respond_with resource
    end
  end
end