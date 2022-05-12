class RoomsController < ApplicationController
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
    @room = Room.find(params[:id])
  end

  def price
    @room = Room.find(params[:id])
  end

  def description
    @room = Room.find(params[:id])
  end

  def photos
    @room = Room.find(params[:id])
  end

  def amenities
    @room = Room.find(params[:id])
  end

  def location
    @room = Room.find(params[:id])
  end

  private
  def room_params
    params.require(:room).permit(:home_type, :room_type, :accommodate, :bedroom, :bathroom)
  end  
end
