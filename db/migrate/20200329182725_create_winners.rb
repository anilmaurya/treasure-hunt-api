class CreateWinners < ActiveRecord::Migration[6.0]
  def change
    create_table :winners do |t|
      t.string :name
      t.integer :treasure_hunt_id

      t.timestamps
    end
  end
end
