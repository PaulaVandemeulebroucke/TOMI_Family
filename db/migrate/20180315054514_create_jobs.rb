class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :photo
      t.string :synonym
      t.text :sector, array: true, default: []
      t.text :short_description
      t.text :description
      t.text :study
      t.string :salary
      t.text :career
      t.text :similar_job, array: true, default: []
      t.text :interest, array: true, default: []
      t.string :statut

      t.timestamps
    end
  end
end
