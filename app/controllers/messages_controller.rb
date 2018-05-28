class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action do
   @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
    @message = @conversation.messages.new
    id = @conversation.sender_id == current_user.id ? @conversation.recipient_id : @conversation.sender.id
    @friend = User.find(id)
    @blocked = current_user.blocked_friends.include?(@friend) || @friend.blocked_friends.include?(current_user)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.create!(message_params)
    p @message
    respond_to do |format|
      format.html {render nothing: true}
      format.js
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
