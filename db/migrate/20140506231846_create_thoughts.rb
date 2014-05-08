class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
