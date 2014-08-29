class Species <ActiveRecord::Base
  validates :species, presence: true
  has_many :sightings
end
