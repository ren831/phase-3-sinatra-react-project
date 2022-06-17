class CreateEvents < ActiveRecord::Migration[6.1]
  def change
  create_table :events do |t|
    t.string :name
    t.integer :start_time
    t.integer :event_length
    t.integer :kid_id
    t.timestamps
  end
  end
end
