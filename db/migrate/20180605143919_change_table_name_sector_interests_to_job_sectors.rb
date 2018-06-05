class ChangeTableNameSectorInterestsToJobSectors < ActiveRecord::Migration[5.1]
  def change
    rename_table :sector_interests, :job_sectors
  end
end
