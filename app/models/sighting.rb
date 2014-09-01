class Sighting < ActiveRecord::Base
  validates :date, :latitude, :longitude, presence: true
  belongs_to :species
  belongs_to :region
end
