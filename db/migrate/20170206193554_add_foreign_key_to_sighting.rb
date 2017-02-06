class AddForeignKeyToSighting < ActiveRecord::Migration[5.0]
  def change
    add_column :sightings, :wildlife_id, :integer
  end
end
