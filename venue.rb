require_relative('rooms')
require_relative('songs')


class Venue

  def initialize()
    @guests = []
    @rooms = []
    @party = []
    @songs = []
  end

  def create_party
    counter = 0
    puts "How many in the party?"
    no_of_guests = gets.chomp.to_i
    while counter < no_of_guests
      puts "Enter name"
      guest_name = gets.chomp
      @party << Guest.new("#{guest_name}")
      counter += 1
    end
    @party.each { |guest| puts guest.name }
    @guests << @party
  end

  def assign_rooms(capacity)
    if @party.count > capacity
      return "Too many in party"
    else
      room = Room.new(capacity)
      return room.check_in(@party)
    end
  end
  
end
