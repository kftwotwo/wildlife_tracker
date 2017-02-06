class SightingsController < AppicationController
  def new
    @sighting = Sighting.new
    render :new
  end
end
