class Movie < ActiveRecord::Base
  has_many :showings, class_name: "Show"
  has_many :ticket_sales, through: :showings,  :source => :tickets

  validates :title, :rating, :length, presence: true

 
end
