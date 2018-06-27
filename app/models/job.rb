class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  has_many :job_interests
  has_many :job_sectors
  has_many :interests, through: :job_interests
  has_many :sectors, through: :job_sectors
end
