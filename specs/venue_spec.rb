require ('minitest/autorun')
require ('minitest/rg')
require ('Pry-Byebug')

require_relative('../venue')
require_relative('../guests')
require_relative('../songs')

class RoomTest < Minitest::Test

  def setup
    @venue = Venue.new()
    
  end

  # def test_guests_counted
  #   assert_equal(2, @venue.create_party.count)
  # end

  # def test_rooms_get_assigned_or_party_too_big

  #   @test_venue = @venue.create_party

  #   assert_equal(4, @venue.assign_rooms(4).count)
  #   assert_equal("Too many in party", @venue.assign_rooms(0))
  # end

  

end