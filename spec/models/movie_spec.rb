require 'rails_helper'

RSpec.describe Movie, type: :model do

  let(:movie) { Movie.new }

  describe "validations" do
    it "is valid when " do
        movie.valid?
        expect(movie.errors).to_not be_empty
      end
  end
end
