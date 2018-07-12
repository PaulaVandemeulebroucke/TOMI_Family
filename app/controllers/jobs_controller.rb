class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @interests = Interest.all
    if params[:query]
      @jobs = Job.search_by_full_name(params[:query]).with_pg_search_highlight.paginate(:page => params[:page], :per_page => 50)
    else
      @jobs = Job.all.paginate(:page => params[:page], :per_page => 100)
      @interests = Interest.all
    end

  end


  def show
    @jobb = Job.find(params[:id])
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

  def like2
    @jobb = Job.find(params[:id])
    if @jobb.liked_by current_user
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

  def dislike2
    @jobb = Job.find(params[:id])
    if @jobb.disliked_by current_user
      respond_to do |format|
        format.html { redirect_to jobs_path }
        format.js
      end
    end
  end

  def job_params
    params.require(:job).permit(:name)
  end


end

