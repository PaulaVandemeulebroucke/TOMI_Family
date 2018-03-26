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

