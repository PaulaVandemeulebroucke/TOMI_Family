class AddAgesasdateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ageasdate, :date
  end
end
