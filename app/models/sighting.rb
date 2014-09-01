class Sighting < ActiveRecord::Base
  validates :date, :latitude, :longitude, presence: true
  belongs_to :species
  has_and_belongs_to_many :regions
end
