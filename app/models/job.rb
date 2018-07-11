class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  has_many :job_interests
  has_many :job_sectors
  has_many :interests, through: :job_interests
  has_many :sectors, through: :job_sectors

    include PgSearch

  pg_search_scope :search_by_full_name, against: [:name],
    using: {
      tsearch: {
            prefix: true,
            negation: true,
            highlight: {
              start_sel: '<b>',
              stop_sel: '</b>',
            }
          }
        }
end
