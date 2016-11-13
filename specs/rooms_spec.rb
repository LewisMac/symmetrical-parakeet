require ('minitest/autorun')
require ('minitest/rg')
require ('Pry-Byebug')

require_relative('../rooms')
require_relative('../guests')

class RoomTest < Minitest::Test
  def setup

    @guests = []
    person1 = Guest.new("John")
    person2 = Guest.new("Paul")
    person3 = Guest.new("Ringo")
    @guests << person1
    @guests << person2
    @guests << person3
    
  end

  # def test_guest_array
  #   # binding.pry
  #   assert_equal("John", @guests[0].name)
  # end

  def test_check_in
    
    room = Room.new(3)

    assert_equal(["John1", "Paul2", "Ringo3"], room.check_in(@guests))
  end

  def test_check_out
    room = Room.new(3)
    room.check_in(@guests)
    assert_equal(2, room.check_out("Paul2").count)
  end


end





