require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("The Chain")
    @song2 = Song.new("Go Your Own Way")
    @song3 = Song.new("Gypsy")
    @song4 = Song.new("Dreams")

    songs = [@song1, @song2, @song3, @song4]

  end

def test_get_song_title()
  assert_equal("The Chain", @song1.title)
end



end
