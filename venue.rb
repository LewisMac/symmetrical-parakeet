class Venue

  def initialize()
    @guests = []
    @rooms = []
  end

  def all_guests
    counter = 0
    puts "How many in the party?"
    no_of_guests = gets.chomp.to_i
    while counter < no_of_guests
      puts "Enter name"
      guest_name = gets.chomp
      @guests << Guest.new("#{guest_name}")
      counter += 1
    end
    @guests.each { |guest| puts guest.name }
  end

  def assign_rooms
  end

end
