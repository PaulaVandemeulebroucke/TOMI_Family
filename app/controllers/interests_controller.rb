class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def likeinterest
    @interest = Interest.find(params[:id])
    @interest.liked_by current_user
    redirect_to interests_path
  end

  def dislikeinterest
    @interest = Interest.find(params[:id])
    @interest.disliked_by current_user
    redirect_to interests_path
  end
end