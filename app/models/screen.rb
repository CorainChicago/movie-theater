class Screen < ActiveRecord::Base
  has_many :shows
  has_many :movies, through: :shows

  validates :name, :seat_count, presence: true

end
