class EventsController < ApplicationController
  def index
    @events = Event.sorted.upcoming
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
        format.js
        redirect_to events_path
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  
  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js
      end
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
