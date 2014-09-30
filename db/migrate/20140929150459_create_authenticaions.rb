class CreateAuthenticaions < ActiveRecord::Migration
  def change
    create_table :authenticaions do |t|
      t.references :room, index: true
      t.string :qq
      t.text :desc

      t.timestamps
    end
  end
end
