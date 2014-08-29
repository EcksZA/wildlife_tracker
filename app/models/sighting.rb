class Sighting < ActiveRecord::Base
  validates :date, :latitude, presence: true
end
