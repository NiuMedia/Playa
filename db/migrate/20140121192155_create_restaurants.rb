class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :type
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.string :pavg
      t.text :promo
      t.string :serviceType

      t.timestamps
    end
  end
end
