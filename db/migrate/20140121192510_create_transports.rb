class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.string :type
      t.string :tel
      t.string :cel
      t.string :mail
      t.string :contactp
      t.string :contactt

      t.timestamps
    end
  end
end
