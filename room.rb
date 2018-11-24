class Room

  attr_reader :name, :room_capacity, :room_price

  def initialize(name, room_capacity, room_price)
    @name = name
    @room_capacity = room_capacity
    @room_price = room_price
    @song_list = []
    @guest_list = []

  end

def get_room_name(name)
  return @room.name
end

def get_room_capacity(room_capacity)
  return @room.room_capacity
end

def get_room_price(room_price)
  return @room.room_price
end

def count_guest_list()
  return @guest_list.size
end

def add_guest_to_guest_list(name)
  @guest_list << name
end

def remove_guest_from_guest_list(name)
  index = @guest_list.index(name)
  @guest_list.slice!(index, 1)
end

def count_song_list()
  return @song_list.size
end


def add_song_to_song_list(fave_song)
  @song_list << fave_song
end


def room_reached_capacity?(name)
  if count_guest_list < @room_capacity
    add_guest_to_guest_list(name)
  else
    return false
  end
end


def guest_checks_in(name, room_price)
  return if room_reached_capacity(name) == false
  add_guest_to_guest_list(name)
  add_money_to_till_check_in_guest(room_price)
  remove_room_price_from_wallet(room_price)
end





end
