require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../venue.rb')

class RoomTest < MiniTest::Test

def setup
  @room1 = Room.new("Jupiter", 5, 8)
  @venue1 = Venue.new(100)
  @guest2 = Guest.new("Sally", 25, "Heroes")
  @guest3 = Guest.new("Tom", 45, "China Girl")
  @guest4 = Guest.new("Rob", 20, "Wild is the Wind")
  @guest5 = Guest.new("Sam", 5, "Rebel, Rebel")
  @guest6 = Guest.new("Holly", 32, "Life on Mars")
  @guest7 = Guest.new("Andy", 50, "Sound and Vision")

end

def test_get_room_name()
  assert_equal("Jupiter", @room1.name)
end

def test_get_room_capacity()
  assert_equal(5, @room1.room_capacity)
end

def test_get_room_price()
  assert_equal(8, @room1.room_price)
end

def test_guest_list_count()
  count = @room1.count_guest_list
  assert_equal(0, count)
end

def test_add_guest_to_guest_list()
  @room1.add_guest_to_guest_list(@guest2.name)
  assert_equal(1, @room1.count_guest_list)
end

def test_remove_guest_from_guest_list()
  @room1.add_guest_to_guest_list(@guest2.name)
  @room1.add_guest_to_guest_list(@guest3.name)
  @room1.remove_guest_from_guest_list(@guest2.name)
  assert_equal(1, @room1.count_guest_list)
end

def test_song_list_count()
  count = @room1.count_song_list
  assert_equal(0, count)
end

def test_add_song_to_song_list()
  @room1.add_song_to_song_list(@guest2.fave_song)
  assert_equal(1, @room1.count_song_list)
end

def test_room_reached_capacity_returns_true()
  @room1.add_guest_to_guest_list(@guest2.name)
  @room1.add_guest_to_guest_list(@guest3.name)
  @room1.add_guest_to_guest_list(@guest4.name)
  @room1.add_guest_to_guest_list(@guest5.name)
  @room1.add_guest_to_guest_list(@guest6.name)
  @room1.room_reached_capacity?(@guest7.name)
  assert_equal(false, @room1.count_guest_list > 5)
end

def test_room_reached_capacity_false()
  @room1.add_guest_to_guest_list(@guest2.name)
  @room1.add_guest_to_guest_list(@guest3.name)
  @room1.add_guest_to_guest_list(@guest4.name)
  @room1.room_reached_capacity?(@guest5.name)
  assert_equal(4, @room1.count_guest_list)
end


def test_guest_checks_in_true()
  @room1.room_reached_capacity?(@guest2.name)
  @venue1.add_money_to_till_check_in_guest(@room1.room_price)
  @guest2.remove_room_price_from_wallet(@room1.room_price)
  assert_equal(5, @room1.room_capacity)  #guest list count increase by 1
  assert_equal(108, @venue1.till)  #till amount goes up by 8
  assert_equal(17, @guest2.wallet)  #guest wallet goes down by 8
end
#
# def test_guest_checks_in_false()


end
