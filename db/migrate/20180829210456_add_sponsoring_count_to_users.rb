class AddSponsoringCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sponsoring_count, :integer, default: 0
  end
end
