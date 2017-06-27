class SightingsController < ApplicationController
  def index
    @animals = Animal.all
    @regions = Region.all
    @sightings = Sighting.all
  end

  def show
    @sighting = Sighting.find(params[:id])
  end

  def new
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.new
  end

  def create
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.new(sighting_params)
    if @sighting.save
      redirect_to  sightings_path
    else
      render :new
    end
  end

  def edit
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.find(params[:id])
  end

  def update
    @animals = Animal.all
    @regions = Region.all
    @sighting= Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to sighting_path(@sighting)
    else
      render :edit
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to sightings_path
  end

  private

  def sighting_params
    params.require(:sighting).permit(:location, :animal_id, :region_id, :description, :reporter)
  end

end
