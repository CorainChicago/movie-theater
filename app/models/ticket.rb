class Ticket < ActiveRecord::Base
  belongs_to :show

  validates :show_id, :first_name, :last_name, :email_address, presence: true
  validates :email_address, confirmation: true

  def check_card_is_valid(number)
    array_of_numbers = []
    total = 0
    number.to_s.split(//).reverse.each_slice(2) do |x|
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
    n = number.to_s.split('')
    if total % 10 == 0 && n.size >= 13 && n.size <=19
      return true
    else
      return false
    end
  end
  
end
