class CreateEventTimes < ActiveRecord::Migration
  def change
    create_table :event_times do |t|
      t.date :start_day
      t.time :start_time
      t.date :end_day
      t.time :end_date
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
