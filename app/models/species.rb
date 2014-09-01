class Species <ActiveRecord::Base
  validates :species, presence: true
  has_many :sightings
  has_many :regions, through: :sightings
end
