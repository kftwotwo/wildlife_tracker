class Specie < ActiveRecord::Base
  validates :date, :latitude, :longitude, :presence => true
end
