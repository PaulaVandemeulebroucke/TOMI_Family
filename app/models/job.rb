class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  belongs_to :user
  include PgSearch
  pg_search_scope :global_search, {
    against: [ :name ]
  }
end
