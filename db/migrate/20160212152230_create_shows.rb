class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.references :movie, index: true
      t.references :screen, index: true
      t.datetime   :starting_time

      t.timestamps null: false
    end
  end
end
