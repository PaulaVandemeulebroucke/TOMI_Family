class ChangeReferencesNamesInJobSectors < ActiveRecord::Migration[5.1]
  def change
    remove_reference :job_sectors, :jobs, foreign_key: true
    remove_reference :job_sectors, :sectors, foreign_key: true
    add_reference :job_sectors, :job, foreign_key: true
    add_reference :job_sectors, :sector, foreign_key: true
  end
end
