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

def test_sufficient_funds_true_if_enough()
  assert_equal(true, @guest.sufficient_funds_to_check_in?(@room8.room_price))
end

def test_sufficient_funds_false_if_enough()
  assert_equal(false, @guest2.sufficient_funds_to_check_in?(@room8.room_price))
end 









end
