require( "minitest/autorun" )
require_relative( "../room.rb" )
require_relative("../guest.rb" )
require_relative( "../songs.rb" )

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new( 10 )
    @songs= Songs.new( "The_Devil_Went_Down_to_Georgia", "The Charlie Daniels Band" )
  end

  def test_room_capacity
    assert_equal( 10 , @room.room_capacity )
  end

  def test_array_length
    assert_equal( 0 , @room.array_length )
  end

  def test_guest_1_enter
    guest1 = Guest.new( "Jim" )
    @room.guest_1_enter(guest1)
    assert_equal( 1, @room.array_length )
  end

  def test_add_song
    @room.add_song(@songs)
    assert_equal( 1 , @room.song_array )
  end

  def test_guest_leave
    guest1 = Guest.new( "Jim" )
    @room.guest_leave(guest1)
    assert_equal( 0 , @room.array_length)
  end
end
