class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :show_id
      t.string :email_address

      t.timestamps null: false
    end
  end
end
