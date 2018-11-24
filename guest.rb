class Guest

attr_reader :name, :wallet, :fave_song

def initialize(name, wallet, fave_song)
  @name = name
  @wallet = wallet
  @fave_song = fave_song

end

def get_guest_name(name)
  return @guest.name
end

def get_guest_wallet(wallet)
  return @guest.wallet
end

def get_guest_fave_song(fave_song)
  return @guest.fave_song
end

def remove_room_price_from_wallet(room_price)
  return @wallet -= room_price
end

def guest_has_sufficient_funds_for_check_in?(room_price, name)
  if @wallet > room_price
    guest_checks_in(name, room_price)
  else
    return false
  end
end

#
# def guest_has_sufficient_funds_for_check_in?(room_price, wallet, name)
#   if wallet > room_price
#     add_guest_to_guest_list(name)
#     remove_room_price_from_wallet(room_price)
#     guest_checks_in(name, room_price)
#   else
#     return false
#   end
# end

#
# def test_guest_has_sufficient_funds_for_check_in_true()
#   @guest2.guest_has_sufficient_funds_for_check_in?(@guest2.wallet)
#   @room2.count_guest_list(@room2.guest_list)
#   assert_equal(7, @guest2.wallet)
#   assert_equal(0, @room2.guest_list)
# end

end
