require ('minitest/autorun')
require ('minitest/rg')

require_relative('../guests')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("John")
    @guest2 = Guest.new("John")
  end

  # def test_guest_name()
  #   assert_equal("John", @guest.give_id)
  #   assert_equal("John", @guest2.give_id)
  # end

end