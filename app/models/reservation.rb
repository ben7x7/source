class Reservation < ApplicationRecord
  validates :name, presence: true
  validates :pax, inclusion: { in: 0..9 }
  validates :date, presence: true
  validate :check_date_valid?, on: :create
  validate :check_time_valid?, on: :create

  private

  def check_date_valid?
    if date == Date.today
      errors.add(:date, 'incorrecte pour réserver en ligne. Veuillez téléphoner')
    elsif date < Date.today
      errors.add(:date, 'ne peut être dans le passé !')
    end
  end

  def check_time_valid?
    start_lunch = '12:00'
    end_lunch = '14:00'
    start_diner = '19:00'
    end_diner = '22:00'

    if time < start_lunch
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time > end_lunch && time < start_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    elsif time > end_diner
      errors.add(:time, 'Lunch: 12:00-14:00, Diner: 19:00-22:00')
    end
  end
end

