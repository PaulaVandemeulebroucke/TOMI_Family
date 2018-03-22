class JobsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        jobs.name ILIKE :query \
        OR jobs.description ILIKE :query \
        OR jobs.short_descrition ILIKE :query \
      "
      @jobs = Job.where(sql_query, query: "%#{params[:query]}%")
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
