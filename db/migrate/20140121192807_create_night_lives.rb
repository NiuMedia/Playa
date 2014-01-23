class CreateNightLives < ActiveRecord::Migration
  def change
    create_table :night_lives do |t|
      t.string :type
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.string :pavg
      t.text :promo

      t.timestamps
    end
  end
end
