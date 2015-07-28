class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :element_text
      t.integer :power_level

      t.timestamps null: false
    end
  end
end
