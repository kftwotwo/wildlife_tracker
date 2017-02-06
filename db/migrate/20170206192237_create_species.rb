class CreateSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :species do |t|
      t.column :date, :string
      t.column :latitude, :string
      t.column :longitude, :string

      t.timestamps
    end
  end
end
