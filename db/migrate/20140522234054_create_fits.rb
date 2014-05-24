class CreateFits < ActiveRecord::Migration
  def change
    create_table :fits do |t|
      t.float :step
      t.float :distance
      t.date :date
      t.time :time
      t.float :sleep
      t.integer :user_id

      t.timestamps
    end
  end
end
