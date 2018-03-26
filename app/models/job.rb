class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  has_many :job_interests
  has_many :interests, through: :job_interests
  # belongs_to :user
  include PgSearch
  pg_search_scope :global_search, {
    against: [ :name ]
  }
end
