class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.text :name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
