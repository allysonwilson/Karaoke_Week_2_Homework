require( "minitest/autorun" )
require_relative( "../songs.rb" )

class TestSongs< MiniTest::Test

  def setup()
    @songs= Songs.new( "The_Devil_Went_Down_to_Georgia", "The Charlie Daniels Band" )
    end

    def test_play_my_song
      assert_equal( :The_Devil_Went_Down_to_Georgia , @songs.play_my_song )
    end

    

  end
