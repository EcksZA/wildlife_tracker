class Sighting < ActiveRecord::Base
  validates :date, :latitude, :longitude, :region_id, presence: true
  belongs_to :species
  belongs_to :region
end
