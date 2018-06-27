class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @interests = Interest.all
    if params[:query].present?
      @jobs = Job.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @jobs = Job.all
      @interests = Interest.all
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def like
    @job = Job.find(params[:id])
    if @job.liked_by current_user
      respond_to do |format|
        format.html { redirect_to jobs_path }
        format.js
      end
    end
  end

  def dislike
    @job = Job.find(params[:id])
    if @job.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to jobs_path }
        format.js
      end
    end
  end
end

