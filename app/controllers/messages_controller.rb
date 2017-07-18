class MessagesController < ApplicationController
  def main
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to :action => 'main'
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
