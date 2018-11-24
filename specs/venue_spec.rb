require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../venue.rb')

class VenueTest < Minitest::Test

  def setup()
    @venue = Venue.new(100)
    @room8 = Room.new("Saturn", 5, 8)

  end

def test_get_till_total()
  assert_equal(100, @venue.till)
end

def test_add_money_to_till_check_in_guest()
  @venue.add_money_to_till_check_in_guest(@room8.room_price)
  assert_equal(108, @venue.till)
end

end
