class ChatroomsController < ApplicationController

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.restaurant = @restaurant
    @chatroom.waiter = @waiter
    if @chatroom.save!
      redirect_to chatroom_path(@chatroom)
    else
      render :create
    end
  end

  def index
    if current_user.waiter?
      @chatrooms = current_user.waiter_chatrooms
    else
      @chatrooms = current_user.restaurant_chatrooms
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
