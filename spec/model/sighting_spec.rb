require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }
  it { should belong_to :species }
  it { should have_and_belong_to_many :regions}
end
