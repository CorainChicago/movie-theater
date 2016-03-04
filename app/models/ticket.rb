class Ticket < ActiveRecord::Base
  attr_accessor :age 
  belongs_to :show

  validates :show_id, :first_name, :last_name, :email_address, presence: true
  validates :email_address, confirmation: true
  validates_format_of :email_address, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :credit_card_number, length: { minimum: 13 }
  validates :credit_card_number, length: { maximum: 19 }
  validate  :check_age
  validate  :check_card_is_valid?


  def create_age(ticket_params)
    @age = [ticket_params["age(1i)"], ticket_params["age(2i)"], ticket_params["age(3i)"]]
    @age = Date.new(@age[0].to_i, @age[1].to_i, @age[2].to_i)
  end

  def reset_cc_and_age(ticket)
    ticket.credit_card_number = 0
    ticket.age = nil
  end

  def check_card_is_valid?
    array_of_numbers = []
    total = 0
    credit_card_number.to_s.split(//).reverse.each_slice(2) do |x|
      array_of_numbers << (x.last.to_i*2)
      array_of_numbers << (x.first.to_i)
    end
    array_of_numbers.each do |num|
      if num.to_i > 9
        total += (num.to_i % 10)+1
      else 
        total += num.to_i
      end
    end
    n = credit_card_number.to_s.split('')
    unless total % 10 == 0 
      errors.add(:credit_card_number, "has an error, please check the numbers")
    end
  end

  def check_age
    if @age.present?
      age_to_validate = Date.new(@age[1], @age[2], @age[3])
      if age_to_validate <= Date.current - 18.years
        return true
      else
        errors.add(:age, "needs to be at least 18 years old to purchase the ticket.")
      end
    else
      false
    end
  end
  
end
