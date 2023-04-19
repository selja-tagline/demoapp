class EventsController < ApplicationController

  include Pagy::Frontend
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    puts "::::::: Call Index Action ::::::::"
    # @events = Event.all
    @pagy, @events = pagy((Event.all), items: 5)
  end

  def show
    puts "::::::: Call Show Action :::::::"
  end

  def new
    puts "::::::: Call New Action :::::::"
    @event = Event.new
  end

  def create
    puts "::::::: Call Create Action :::::::"
    @event = Event.new(event_params)
    respond_to do |format|
      if(@event.save)
        format.html { redirect_to event_url(@event), notice: "Event Successfully Created" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    puts "::::::: Call Edit Action :::::::"
  end

  def update
    puts "::::::: Call Update Action :::::::"
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: "Event successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        
      end
    end
    
  end

  def destroy
    puts "::::::: Call Destroy Action :::::::"
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :location, :Date, :user_id)
  end
end
