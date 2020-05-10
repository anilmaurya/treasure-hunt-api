class AddDescriptionToTreasureHunts < ActiveRecord::Migration[6.0]
  def change
    add_column :treasure_hunts, :description, :text
    add_column :treasure_hunts, :zoom_level, :integer
  end
end
