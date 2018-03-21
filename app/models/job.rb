class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
end
