class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :room_id
      t.integer :user_id
      t.date :check_in
      t.date :check_out
      t.integer :total_nights
      t.float :total_price

      t.timestamps
    end
  end
end
