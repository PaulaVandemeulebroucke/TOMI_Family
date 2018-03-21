class JobsController < ApplicationController
  def index
    @jobs = Job.all
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
