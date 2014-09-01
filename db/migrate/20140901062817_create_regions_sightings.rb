class CreateRegionsSightings < ActiveRecord::Migration
  def change
    create_table :regions_sightings do |t|
      t.integer :region_id
      t.integer :sighting_id
    end
  end
end
