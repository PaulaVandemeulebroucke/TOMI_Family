class CreateJobInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :job_interests do |t|
      t.references :job, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
