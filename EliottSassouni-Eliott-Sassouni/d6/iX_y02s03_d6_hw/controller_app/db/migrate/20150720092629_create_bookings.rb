class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :student
      t.string :question
      t.text :additional_comments

      t.timestamps null: false
    end
  end
end
