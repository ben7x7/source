class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.welcome.subject
  #
  def welcome(reservation)
    @reservation = params[:reservation]

    mail(
      from: "reservation.mail",
      to:"contact@tabledesartisans.ch",
      subject: "New Reservation"
    )
  end
end
