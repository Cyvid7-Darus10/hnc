class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :room_id
      t.string :image

      t.timestamps
    end
  end
end
