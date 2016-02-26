class CreateEventTimes < ActiveRecord::Migration
  def change
    create_table :event_times do |t|
      t.date :start_datetime
      t.date :end_datetime
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
