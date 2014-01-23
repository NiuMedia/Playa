class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :logo
      t.string :cat
      t.string :type

      t.timestamps
    end
  end
end
