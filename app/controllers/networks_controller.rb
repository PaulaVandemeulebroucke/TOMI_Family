class NetworksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_friendable, only: [:unblock_friend, :accept_friend, :decline_friend, :request_friend, :block_friend, :remove_friend]


  def network
    @results = User.where(user_category: "student") - User.where(first_name: nil) - Array(current_user.blocked_friends) - Array(current_user) - current_user.friends.paginate(:page => params[:page], :per_page => 100)
    job_likes_ids = current_user.job_likes.pluck(:votable_id)
    @commun_jobs_results = []
    @results.each_with_index do |result, index|
      array = result.job_likes.pluck(:votable_id)
      @commun_jobs_results << [result, (job_likes_ids & array).empty? ? nil : Job.find( (job_likes_ids & array)[0]).name ,(job_likes_ids & array).size - 1]
      break if @commun_jobs_results.size == 10 && !params[:more]
    end
    @results = @commun_jobs_results
  end

  def messenger
    @conversations = Conversation.where(sender_id: current_user.id) + Conversation.where(recipient_id: current_user.id)
    @conversations = nil if @conversations.empty?
  end

  def send_friend_request
    friendable = User.find(params[:friendable])
    current_user.friend_request(friendable)
    redirect_to :network
  end

  def users_all
    @friends = current_user.friends
    set_friends_clusters
  end

  # NETWORK FRIENDS ACTIONS

  def request_friend
    current_user.friend_request(@friend) if @friend
    respond_to do |format|
      format.js { render "networks/request_friend", friend_id: @friend.id }
    end
  end

  # USERS FRIENDS ACTIONS

  def unblock_friend
    if @friend
      current_user.unblock_friend(@friend)
      current_user.friend_request(@friend)
      @friend.accept_request(current_user)
    end
    set_friends_clusters
    respond_to do |format|
      format.js { render "users_all" }
    end
  end

  def accept_friend
    current_user.accept_request(@friend) if @friend
    set_friends_clusters
    respond_to do |format|
      format.js { render "users_all" }
    end
  end

  def decline_friend
    current_user.decline_request(@friend) if @friend
    set_friends_clusters
    respond_to do |format|
      format.js { render "users_all" }
    end
  end

  def block_friend
    current_user.block_friend(@friend) if @friend
    set_friends_clusters
    respond_to do |format|
      format.js { render "users_all" }
    end
  end

  def remove_friend
    current_user.remove_friend(@friend) if @friend
    set_friends_clusters
    respond_to do |format|
      format.js { render "users_all" }
    end
  end

  private

  # SETTERS

  def set_friends_clusters
    User.joins(:friendships).eager_load!(:friendships)
    @requested_friends = current_user.requested_friends.empty? ? nil : current_user.requested_friends
    @blocked_friends = current_user.blocked_friends.empty? ? nil : current_user.blocked_friends
    #@suggested_friends = User.all - Array(@blocked_friends) - current_user.friends - Array(current_user)
    @pending_friends = current_user.pending_friends.empty? ? nil : current_user.pending_friends
  end

  def set_friendable
    @friend = User.find(params[:friendable].to_i) if params[:friendable]
  end

  # STRONG PARAMS

  def conversation_params
   params.permit(:sender_id, :recipient_id)
  end

  def message_params
    params.require(:message).permit(:body, :user_id)
  end


end
