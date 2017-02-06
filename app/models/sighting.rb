class Sighting < ActiveRecord::Base
  belongs_to :wildlife
  validates :date, :latitude, :longitude, :presence => true
end
