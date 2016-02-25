class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :phone_number
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
