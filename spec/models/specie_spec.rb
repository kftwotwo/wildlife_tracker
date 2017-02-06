require 'rails_helper'
describe Specie do
  it {
    should validate_presence_of :date
    should validate_presence_of :latitude
    should validate_presence_of :longitude
   }
end
