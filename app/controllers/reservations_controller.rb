class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash.now[:notice] = 'Booked !'
    else
      flash.now[:alert] = 'Can\'t send your reservation'
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :date, :time, :pax)
  end

end
