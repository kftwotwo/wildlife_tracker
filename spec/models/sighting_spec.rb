require 'rails_helper'
describe Sighting do
  it {
    should validate_presence_of :date
    should validate_presence_of :latitude
    should validate_presence_of :longitude
   }
end
