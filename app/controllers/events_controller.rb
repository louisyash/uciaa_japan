class EventsController < ApplicationController

  def index
    @events = Event.all
    authorize @events
  end
end
