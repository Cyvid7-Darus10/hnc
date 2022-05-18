class ReservationsController < ApplicationController
  def index
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path, success: "Reservation successfully created"
    else
      redirect_to room_path(@reservation.room_id)
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :room_id, :check_in, :check_out, :total_nights, :total_price)
  end
end
