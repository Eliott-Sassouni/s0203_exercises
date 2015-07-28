class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.boolean :open

      t.timestamps null: false
    end
  end
end
