class RemoveSectorFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :sector
  end
end
