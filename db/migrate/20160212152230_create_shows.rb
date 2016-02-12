class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.references :movie, index: true
      t.references :screen, index: true
      t.time       :start_time
      t.time       :end_time
      t.date       :date 

      t.timestamps null: false
    end
  end
end
