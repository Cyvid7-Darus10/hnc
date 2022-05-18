class RoomsController < ApplicationController
  before_action :set_room, only: [:listing, :price, :description, :photos, :amenities, :location, :update]

  def index
    @rooms = current_user.rooms.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
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

  def update
    if params[:room][:photo].present?
      params[:room][:photo].each do |photo|
        @room.photos.create(image: photo)
      end
      redirect_back fallback_location: request.referer, success: "Photos successfully uploaded"
    elsif @room.update(room_params)
      redirect_back fallback_location: request.referer, success: "Room successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    if params[:photo_id].present?
      @photo = Photo.find(params[:photo_id])
      @photo.destroy
      redirect_back fallback_location: request.referer, success: "Photo successfully deleted"
    else
      redirect_back fallback_location: request.referer, success: "Photo unsuccessfully deleted"
    end
  end

  private
  def room_params
    params.require(:room).permit(:home_type, :room_type, :accommodate, :bedroom, :bathroom,
                                 :price, :name, :summary, :has_tv, :has_kitchen, :has_internet,
                                 :has_aircon, :has_heating, :address, :is_active
                                )
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
