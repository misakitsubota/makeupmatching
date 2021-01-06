class MessagesController < ApplicationController

  def create
    @message = Message.new(text: params[:message][:text])
    # message = Message.create(message_params)
    # redirect_to "/items/#{message.item.id}"
  end

  private
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end


