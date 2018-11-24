class Venue

  attr_reader :till

  def initialize(till)
    @till = till
  end

def add_money_to_till_check_in_guest(room_price)
  @till += room_price
end 

end
