class RemovePatternFromAnimal < ActiveRecord::Migration
  def change
    remove_column :animals, :pattern, :string
  end
end
