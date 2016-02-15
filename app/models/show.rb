class Show < ActiveRecord::Base
  attr_reader :start_time

  belongs_to :movie
  belongs_to :screen
  has_many   :tickets

  
end
