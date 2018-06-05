class Sector < ApplicationRecord
  has_many :job_sectors
  has_many :jobs, through: :job_sectors
end
