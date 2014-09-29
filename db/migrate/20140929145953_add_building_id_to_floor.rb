class AddBuildingIdToFloor < ActiveRecord::Migration
  def change
    add_reference :floors, :building, index: true
  end
end
