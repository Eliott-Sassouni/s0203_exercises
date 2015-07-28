class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :species
      t.string :diet
      t.integer :size
      t.string :color
      t.string :region
      t.integer :age
      t.string :name

      t.timestamps null: false
    end
  end
end
