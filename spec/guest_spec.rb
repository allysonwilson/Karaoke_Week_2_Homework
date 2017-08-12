require( "minitest/autorun" )
require_relative( "../guests" )

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new( "Jim" , 1)
    @guest = Guest.new( "Sam" , 1)

  end



end
