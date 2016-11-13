require ('minitest/autorun')
require ('minitest/rg')
require ('Pry-Byebug')

require_relative('../venue')
require_relative('../guests')

class RoomTest < Minitest::Test

  def setup
    @venue = Venue.new()
  end

  def test_guests_counted
    assert_equal(2, @venue.all_guests.count)
  end

end