class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  # before_action :authenticate_user! 

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events

  # def new 
  #   @event = current_user.events.build
  # end 

  def create
    # binding.pry
    @event = current_user.events.build(event_params)
      # binding.pry
    if @event.save
      # payload = {user_id: user.id}
      # token = encode_token(payload)
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :location, :event_type, :start_time, :end_time, :group_id, :user_id, :poster)
    end
end
