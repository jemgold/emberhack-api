class EventsController < ApplicationController
  respond_to :json

  def index
    if params[:search].present?
      if params[:lat].present? && params[:lon].present? && params[:text].present?
        Event.search({lat: params[:lat], lon: [:lon], time: ',6w', text: params[:text]})
      end
      @events = Event.near(params[:search], 10, order: 'distance')
    else
      @events = Event.all
    end
    render :json => @events
  end
end
