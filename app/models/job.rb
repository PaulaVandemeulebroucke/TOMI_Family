class Job < ApplicationRecord
  # searchkick language: "english", match: :word_start
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  has_many :job_interests
  has_many :job_sectors
  has_many :interests, through: :job_interests
  has_many :sectors, through: :job_sectors


  # include AlgoliaSearch

  # index = Algolia::Index.new('jobs')

  # index.set_settings(
  #   searchableAttributes: [
  #     'name'
  #   ]
  # )

  include PgSearch
  pg_search_scope :search_by_full_name, against: [:name, :synonym],
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
        pg_search_scope :gringo_search,
                          :against => :word,
                          :ignoring => :accents
end

