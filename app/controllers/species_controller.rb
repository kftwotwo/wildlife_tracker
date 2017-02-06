class SightingsController < AppicationController
  def index
    @sightings = Sighting.all
  end
end
