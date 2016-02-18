class Show < ActiveRecord::Base
  belongs_to :movie
  belongs_to :screen
  has_many :tickets

  validates :movie_id, :screen_id, :starting_time, presence: true
  validates :screen_id, uniqueness: { scope: :starting_time }

  
end
