class AddUserIdToAbonnements < ActiveRecord::Migration[5.1]
  def change
    add_reference :abonnements, :user, foreign_key: true
  end
end
