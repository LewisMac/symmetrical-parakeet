require_relative('guests')
require_relative('venue')
require ('Pry-Byebug')


class Room

  def initialize(capacity)
    @counter = 0
    @guests_in_room = []
    @capacity = capacity
  end 

  def check_in(guests=@guests)
    # binding.pry
    for patron in guests
      break if @guests_in_room.count == @capacity
      @counter += 1
      @guests_in_room << patron.name + "#{@counter}"
    end
    return @guests_in_room
  end

  def check_out(id)
      @guests_in_room.delete(id)
      return @guests_in_room
  end

end

# thing = Room.new()

# puts thing

# def all_guests
#   counter = 0
#   no_of_guests = 3
#   while counter < no_of_guests
#     guest_name = gets.chomp
#     @guests << Guest.new("#{guest_name}")
#     counter += 1
#   end
#   @guests.each { |guest| puts guest.name }
# end
