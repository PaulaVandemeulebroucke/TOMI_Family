class InterestsController < ApplicationController
  def index
    @interests = Interest.all - current_user.get_voted(Interest)
  end

  def show
    @interest = Interest.find(params[:id])
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
end
