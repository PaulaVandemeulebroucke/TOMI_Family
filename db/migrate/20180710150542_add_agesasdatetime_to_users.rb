class AddAgesasdatetimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ageasdatetime, :datetime
  end
end
