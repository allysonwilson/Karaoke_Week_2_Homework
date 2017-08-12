class Room

  attr_reader( :capacity )
  attr_writer( :capacity )

  def initialize( capacity )
    @capacity = capacity
    @guests = []
    @songs= []
  end

  def room_capacity
    return @capacity
  end

  def array_length
    @guests.length()
  end


  def guest_1_enter(guest)
    @guests.push(guest)
  end

  def song_array
    @songs.length()
  end

  def add_song(song)
    @songs.push(song)
  end

  def guest_leave(guest)
    @guests.delete(guest)
  end


end
