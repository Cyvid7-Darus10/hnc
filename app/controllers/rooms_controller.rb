class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def show
  end
  
  def create
    @room = current_user.rooms.new(room_params)
    if @room.save
      redirect_to @room
    else
      render 'new'
    end
  end

  private
  def room_params
    params.require(:room).permit(:home_type, :room_type, :accommodate, :bedroom, :bathroom)
  end  
end
