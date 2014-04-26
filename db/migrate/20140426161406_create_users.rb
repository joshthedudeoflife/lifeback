class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :reward
      t.string :post
      t.integer :goal
      t.integer :schedule

      t.timestamps
    end
  end
end
