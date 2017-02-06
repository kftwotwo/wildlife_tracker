class Sighting < ActiveRecord::Base
  validates :date, :latitude, :longitude, :presence => true
end
