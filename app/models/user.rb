class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  has_friendship
  def job_likes
    self.votes.up.for_type(Job)
  end
  def interest_likes
    self.votes.up.for_type(Interest)
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def picture
    if avatar.blank?
      avatar_list = ["https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=214b5beac96f7d680a19b3836b28ccc3&auto=format&fit=crop&w=668&q=80"]
    else
      avatar_url
    end
  end
end
