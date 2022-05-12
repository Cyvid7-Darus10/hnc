class RoomsController < ApplicationController
  before_action :set_room, only: [:listing, :price, :description, :photos, :amenities, :location]

  def new
    @room = Room.new
  end
  
  def create
    @room = current_user.rooms.new(room_params)
    if @room.save
      redirect_to listing_room_path(@room), success: "Successfully created a room"
    else
      render 'new'
    end
  end

  def listing
  end

  def price
  end

  def description
  end

  def photos
  end

  def amenities
  end

  def location
  end

  private
  def room_params
    params.require(:room).permit(:home_type, :room_type, :accommodate, :bedroom, :bathroom)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
