require 'rails_helper'

describe Species do
  it { should validate_presence_of :species }
  it { should have_many :sightings }
  it { should have_many :regions }
end
