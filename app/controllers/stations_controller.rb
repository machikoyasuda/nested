class StationsController < ApplicationController
  def index
    # First, need to find the Line the Station belongs to
    @line = Line.find params[:line_id]
    # Next, find the Stations via Mongoid method, .stations
    @stations = @line.stations
  end
end
