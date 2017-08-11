require("minitest/autorun")
require("minitest/rg")
require_relative("../Song.rb")

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("Back in Black", "ACDC")
    @song_2 = Song.new("Enter Sandman", "Metallica")
    @song_3 = Song.new("Proud Mary", "Tina Turner")
  end

  def test_song_has_name_and_artist
    assert_equal("Back in Black", @song_1.name)
    assert_equal("Metallica", @song_2.artist)
  end

end
