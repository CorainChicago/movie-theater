class Movie < ActiveRecord::Base
  has_many :showings, class_name: "Show"
  has_many :ticket_sales, through: :showings,  :source => :tickets

  def show_start_time
    times = []
    self.showings.each do |show|
      times << show.start_time
    end
  end
end
