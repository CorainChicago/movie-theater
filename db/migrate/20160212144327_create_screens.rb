class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.string :name
      t.integer :seat_count

      t.timestamps null: false
    end
  end
end
