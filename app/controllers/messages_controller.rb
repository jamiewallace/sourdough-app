class MessagesController < ApplicationController

  authorize_resource

  def inbox
    @contact_list = current_user.contact_list
  end

  def conversation
    @other_user      = User.find params[:id]
    @message_thread  = current_user.messages_with_user params[:id]
    @new_message     = current_user.messages_sent.new(recipient_id: @other_user.id)

    render :partial => 'conversation'
  end

  def create
    message = Message.create params[:message]
    if request.xhr?
      if params[:profile]
        render nothing: true
      else
        render :partial => 'message', locals: {:message => message}
      end
    else
     redirect_to message.recipient
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    if request.xhr?
      head :ok
    else
      redirect_to inbox_url
    end
  end

end