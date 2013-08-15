class StationsController < ApplicationController
  # HOOK: Parameter is method you want to call
  before_action :line
  # Every time index is hit, hit line method.

  def index
    # First, need to find the Line the Station belongs to
    # REFACTORED OUT: @line = Line.find params[:line_id]
    # Next, find the all Stations in that Line via Mongoid method, .stations
    # REFACTORED OUT: @stations = @line.stations
  end

  def show
    # Show a specific station id
    # GET stations#show /lines/:line_id/stations/:id line_station
    # Next, find the specific station in that Line
    # .find(params[:id]) is a Mongoid method
    @station = @line.stations.find(params[:id])
  end

  private

  def line
    @line = Line.find params[:line_id]
  end

end
