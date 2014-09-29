class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :biulding, index: true
      t.references :floor, index: true
      t.string :title

      t.timestamps
    end
  end
end
