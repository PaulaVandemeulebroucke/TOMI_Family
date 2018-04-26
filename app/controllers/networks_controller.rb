class NetworksController < ApplicationController

  def network
    @users = User.all
  end

  def messenger

  end

  def send_friend_request
    friendable = User.find(params[:friendable])
    current_user.friend_request(friendable)
    redirect_to network_path
  end

  def look_for_a_friend

  end
end
