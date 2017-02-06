class SightingsController < ApplicationController
  def show
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = Sighting.find(params[:id])
    render :show
  end

  def new
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = @wildlife.sightings.new
    render :new
  end

  def create
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = @wildlife.sightings.new(sighting_params)
    if @sighting.save
      redirect_to wildlife_path(@sighting.wildlife)
    else
      render :new
    end
  end

  def edit
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def update
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to wildlife_path(@sighting.wildlife)
    else
      render :edit
    end
  end

  def destroy
    @wildlife = Wildlife.find(params[:wildlife_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to wildlife_path(@sighting.wildlife)
  end

private
  def sighting_params
    params.require(:sighting).permit(:date, :latitude, :longitude, :region)
  end
end
