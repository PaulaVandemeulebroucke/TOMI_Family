class Interest < ApplicationRecord
  acts_as_votable
  has_many :job_interests
  has_many :jobs, through: :job_interests
end
