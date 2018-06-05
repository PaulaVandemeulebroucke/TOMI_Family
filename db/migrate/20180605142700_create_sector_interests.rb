class CreateSectorInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :sector_interests do |t|
      t.references :jobs, foreign_key: true
      t.references :sectors, foreign_key: true

      t.timestamps
    end
  end
end
