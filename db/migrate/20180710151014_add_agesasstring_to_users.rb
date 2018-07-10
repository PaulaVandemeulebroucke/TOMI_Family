class AddAgesasstringToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ageasstring, :string
  end
end
