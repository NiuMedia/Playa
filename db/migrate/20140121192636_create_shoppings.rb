class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.string :type
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.text :products

      t.timestamps
    end
  end
end
