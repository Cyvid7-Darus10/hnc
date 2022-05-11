class AddBathroomToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :bathroom, :integer
  end
end
