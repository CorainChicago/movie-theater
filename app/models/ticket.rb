class Ticket < ActiveRecord::Base
  belongs_to :show

  validates :show_id, :first_name, :last_name, :email_address, :credit_card_number, :credit_card_expiration_date, presence: true

  
end
