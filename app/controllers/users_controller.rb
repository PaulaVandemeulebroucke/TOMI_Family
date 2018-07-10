class UsersController < ApplicationController
  before_action :set_friends_clusters, only: [:search_friends]

  def edit
    #@user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)

    @user.update(user_params)
    redirect_to myprofile_path
  end

  def search
    @results = User.where(user_category: "student").search_by_full_name(params["query"]) if params[:query] && !params[:query].blank?
    if @results
      @results = @results - Array(current_user) - current_user.blocked_friends - current_user.friends
    else
      @results = User.where(user_category: "student") - Array(current_user.blocked_friends) - Array(current_user) - current_user.friends
    end
    job_likes_ids = current_user.job_likes.pluck(:votable_id)
    @commun_jobs_results = []
    @results.each_with_index do |result, index|
      array = result.job_likes.pluck(:votable_id)
      @commun_jobs_results << [result, (job_likes_ids & array).empty? ? nil : Job.find(array[0]).name ,(job_likes_ids & array).size - 1]
      break if @commun_jobs_results.size == 10 && !params[:more]
    end
    @results = @commun_jobs_results
    respond_to do |format|
      format.js { render "/networks/network" }
      format.html { render "/networks/network" }
    end
  end

  def search_friends
    if params["query"] && !params["query"].empty?
      @friends = current_user.friends.search_by_full_name(params["query"])
    else
      @friends = current_user.friends
    end
    respond_to do |format|
      format.js { render "/networks/users_all" }
      format.html { render "/networks/users_all" }
    end
  end

  private

  # strong parameters
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :ageasdate,
      :city,
      :avatar
    )
  end

  def search_params
    params.require(:query).permit(
      :query_string
    )
  end

  def set_friends_clusters
    User.joins(:friendships).eager_load!(:friendships)
    @requested_friends = current_user.requested_friends.empty? ? nil : current_user.requested_friends
    @blocked_friends = current_user.blocked_friends.empty? ? nil : current_user.blocked_friends
    @pending_friends = current_user.pending_friends.empty? ? nil : current_user.pending_friends
  end

end
