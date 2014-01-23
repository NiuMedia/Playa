class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :location_name
      t.string :tel
      t.string :mail
      t.string :contactp
      t.string :contactt
      t.string :pavg
      t.string :place
      t.string :music
      t.string :activity

      t.timestamps
    end
  end
end
