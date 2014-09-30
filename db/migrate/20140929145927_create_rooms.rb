class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :floor, index: true
      t.string :title

      t.timestamps
    end
  end
end
