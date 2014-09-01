class RemoveRegionsSightingsTable < ActiveRecord::Migration
  def change
    drop_table :regions_sightings
  end
end
