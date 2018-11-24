require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../venue.rb')


class GuestTest < MiniTest::Test

  def setup

    @guest = Guest.new("Bob", 30, "Let's Dance")
    @guest2 = Guest.new("Jeff", 7, "Ashes to Ashes")
    @room8 = Room.new("Saturn", 5, 8)
    @venue1 = Venue.new(100)


  end

def test_get_guest_name()
  assert_equal("Bob", @guest.name)
end

def test_get_guest_wallet()
  assert_equal(30, @guest.wallet)
end

def test_get_guest_fave_song()
  assert_equal("Let's Dance", @guest.fave_song)
end

def test_guest_check_in_new_wallet_total()
  @guest.remove_room_price_from_wallet(@room8.room_price)
  assert_equal(22, @guest.wallet)
end

def test_guest_has_sufficient_funds_for_check_in_true()
  @guest.guest_has_sufficient_funds_for_check_in?(@room8.room_price, @name)
  @room8.guest_checks_in(@name, @room_price)
  assert_equal(22, @wallet)
  assert_equal(1, @room8.guest_list)
  assert_equal(108, @venue1.till)
end

def test_guest_has_sufficient_funds_for_check_in_false()
  @guest2.guest_has_sufficient_funds_for_check_in?(@room8.room_price, @name)
  assert_equal(false, @guest.wallet < @room8.room_price)
end

end
