class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :type
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.string :pta
      t.string :ptb
      t.string :pavg
      t.string :stars

      t.timestamps
    end
  end
end
