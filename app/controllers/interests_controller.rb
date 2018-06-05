class InterestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @interests = Interest.all - current_user.get_voted(Interest)
  end

  def edit
    @interests = current_user.get_voted(Interest)
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def meslikes
    @interests = Interest.all
  end

  def likeinterest
    @interest = Interest.find(params[:id])
    @interest.liked_by current_user
    respond_to do |format|
      format.html { redirect_to interests_path }
      format.js
    end
  end

  def dislikeinterest
    @interest = Interest.find(params[:id])
    @interest.disliked_by current_user
    respond_to do |format|
      format.html { redirect_to interests_path }
      format.js
    end
  end
  def like2interest
    @interest = Interest.find(params[:id])
    @interest.liked_by current_user
    respond_to do |format|
      format.html { redirect_to interests_path }
      format.js
    end
  end

  def dislike2interest
    @interest = Interest.find(params[:id])
    @interest.disliked_by current_user
    respond_to do |format|
      format.html { redirect_to interests_path }
      format.js
    end
  end
end
