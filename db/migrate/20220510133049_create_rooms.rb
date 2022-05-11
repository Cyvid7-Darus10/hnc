class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :name
      t.text :summary
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.integer :bedroom
      t.string :address
      t.float :price
      t.boolean :is_active
      t.boolean :has_tv
      t.boolean :has_kitchen
      t.boolean :has_internet
      t.boolean :has_heating
      t.boolean :has_aircon

      t.timestamps
    end
  end
end
