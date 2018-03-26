class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  def job_likes
    self.votes.up.for_type(Job)
  end
  def interest_likes
    self.votes.up.for_type(Interest)
  end
end
