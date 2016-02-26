class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :ticket_price
      t.integer :ticket_quantity
      t.string :url
      t.string :category
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
