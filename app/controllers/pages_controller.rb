class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def homepage
  end

  def favorites
    @jobs = current_user.likes.map { |like| Job.find(like.votable_id) }
  end

  def suggestion
    @interests = current_user.likes.map { |like| Interests.find(like.votable_id) }
  end
end
