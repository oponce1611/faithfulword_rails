class EventsController < ApplicationController
  def index
    @events = Event.sorted.upcoming
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      redirect_to events_path
    end
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path
    else
      redirect_to events_path
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :location, :date)
  end
end
