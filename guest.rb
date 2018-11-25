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

def sufficient_funds_to_check_in?(room_price)
  return @wallet >= room_price
end



end
