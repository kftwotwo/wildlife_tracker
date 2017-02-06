class SpeciciesController < AppicationController
  def index
    @species = Specie.all
  end
end
