class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :signupstudents]
  def home
  end

  def homepage
  end

  def favorites
    @jobs = current_user.job_likes.map { |like| Job.find(like.votable_id) }
  end

  def suggestion
    @interests = current_user.interest_likes.map { |like| Interest.find(like.votable_id) }
  end

  def signupstudents
  end
end
