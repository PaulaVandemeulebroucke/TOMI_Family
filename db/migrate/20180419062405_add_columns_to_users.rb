class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :avatar, :string
    add_column :users, :ecole, :string
    add_column :users, :specialization, :string
    add_column :users, :idee_metier, :string
    add_column :users, :age, :integer
  end
end
