class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :show_id
      t.string  :first_name
      t.string  :last_name
      t.string  :email_address
      t.string  :credit_card_number
      t.integer :credit_card_expiration_date

      t.timestamps null: false
    end
  end
end
