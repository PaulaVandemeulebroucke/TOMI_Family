class JobsController < ApplicationController
  def index
    if params[:query].present?
      @jobs = params[:query].map { |query| Job.global_search("%#{query}%")}.inject(:&)
    else
      @jobs = Job.all
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def like
    @job = Job.find(params[:id])
    @job.liked_by current_user
    redirect_to jobs_path
  end

  def dislike
    @job = Job.find(params[:id])
    @job.disliked_by current_user
    redirect_to jobs_path
  end
end
