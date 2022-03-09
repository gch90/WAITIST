class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
      render_to_string(partial: "message", locals: {message: @message})
      )
      # head :ok
      # (tab: 2, anchor: "message-#{@message.id}")
      render "clear_form"
    else
      redirect_to user_path(tab: 2)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
