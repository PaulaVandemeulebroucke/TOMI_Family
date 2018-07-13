class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # GEMS CONCERNS

  acts_as_voter
  has_friendship
  mount_uploader :avatar, PhotoUploader
  include PgSearch

  # RELATIONS

  has_many :messages
  has_many :conversations, foreign_key: :sender_id

  # METHODS

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
      avatar_list = ["https://images.unsplash.com/photo-1511632765486-a01980e01a18?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c0ff296c4f785350505c2b5545ae7393&auto=format&fit=crop&w=1650&q=80"]
    else
      avatar_url
    end
  end

  # PG SEARCH SCOPES

  pg_search_scope :search_by_full_name, :against => [:first_name, :last_name],
                                          :using => {
                                          :tsearch => {:prefix => true}

                                        }
end
