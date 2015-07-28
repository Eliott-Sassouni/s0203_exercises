class AddPatternToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :pattern, :string
  end
end
