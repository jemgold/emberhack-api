class EventsController < ApplicationController
  respond_to :json

  def index
    @events = Event.all
    render :json => @events
  end
end
