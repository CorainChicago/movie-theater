class Show < ActiveRecord::Base
  belongs_to :movie
  belongs_to :screen
  has_many   :tickets
end
