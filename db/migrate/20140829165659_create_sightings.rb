class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.string :latitude
      t.string :longitude
      t.integer :species_id

    end
  end
end
