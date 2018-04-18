class CreateAbonnements < ActiveRecord::Migration[5.1]
  def change
    create_table :abonnements do |t|
      t.monetize :price, currency: { present: false }

      t.timestamps
    end
  end
end
