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
    if lunch_time == false && diner_time == false
      errors.add(:time, 'Lunch: 12h-14h  Diner: 19h-22h')
    end
  end

  def lunch_time
    t1 = Time.new('12:00')
    t2 = Time.new('14:00')
    time.between?(t1, t2)
  end

  def diner_time
    t1 = Time.new('19:00')
    t2 = Time.new('22:00')
    time.between?(t1, t2)
  end

end

