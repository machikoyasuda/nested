class StationsController < ApplicationController
  def index
    # First, need to find the Line the Station belongs to
    @line = Line.find params[:line_id]
    # Next, find the all Stations in that Line via Mongoid method, .stations
    @stations = @line.stations
  end

  def show
    # Show a specific station id
    # GET stations#show /lines/:line_id/stations/:id line_station
    @line = Line.find params[:line_id]
    # Next, find the specific station in that Line
    # .find(params[:id]) is a Mongoid method
    @station = @line.stations.find(params[:id])
  end
end
