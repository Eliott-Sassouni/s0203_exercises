class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :name
      t.integer :size
      t.string :gender
      t.integer :danger_level

      t.timestamps null: false
    end
  end
end
