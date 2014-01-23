class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :type
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.string :pavg

      t.timestamps
    end
  end
end
