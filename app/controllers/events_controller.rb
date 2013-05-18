class EventsController < ApplicationController
  respond_to :json

  def index
    if params[:search].present?
      @events = Event.near(params[:search], 10, order: 'distance')
    else
      @events = Event.all
    end
    render :json => @events
  end
end
