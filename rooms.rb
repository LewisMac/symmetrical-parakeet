require_relative('guests')
require_relative('songs')

require ('Pry-Byebug')


class Room

  def initialize(capacity)
    @counter = 0
    @guests_in_room = []
    @capacity = capacity
    @song_array = []
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

  def create_song_array(no_of_songs)
    counter = 0
    until counter == no_of_songs
      name = "test_name"
      artist = "test_artist"
      genre = "test_genre"

      @song_array << Song.new(name, artist, genre)
      counter += 1
    end
  end

end
