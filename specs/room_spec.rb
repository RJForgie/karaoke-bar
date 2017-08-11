require("minitest/autorun")
require("minitest/rg")
require_relative("../Room.rb")
require_relative("../Song.rb")
require_relative("../Guest.rb")

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new(1, 3)
    @song_1 = Song.new("Back in Black", "ACDC")
    @song_2 = Song.new("Enter Sandman", "Metallica")
    @song_3 = Song.new("Proud Mary", "Tina Turner")
    @guest_1 = Guest.new("George")
    @guest_2 = Guest.new("Sally")
    @guest_3 = Guest.new("Jim")
    @guest_4 = Guest.new("Jenny")
  end

  def test_room_number_and_capacity
    assert_equal(1, @room_1.number)
    assert_equal(3, @room_1.capacity)
  end

  def test_songs_and_guests_are_empty
    assert_equal([], @room_1.playlist)
    assert_equal([], @room_1.guestlist)
  end

  def test_add_songs_to_playlist
    @room_1.add_songs_to_playlist(@song_1)
    song = @room_1.playlist.find {|song| song.name == 'Back in Black'}
    assert_equal(false, song.nil?)
  end

  def test_add_guests_to_room
    @room_1.add_guest_to_room(@guest_1)
    assert_equal(1, @room_1.guestlist.length)
    guest = @room_1.guestlist.find {|guest| guest.name == 'George'}
    assert_equal(false, guest.nil?)
  end

  def test_remove_guest_from_room
    @room_1.add_guest_to_room(@guest_1)
    @room_1.remove_guest_from_room(@guest_1)
    assert_equal(0, @room_1.guestlist.length)
  end

  # def test_room_playlist
  #   room_playlist  = [@song_1, @song_2, @song_3]
  #   @room_1.add_songs_to_playlist(room_playlist)
  #   assert_equal(3, @room_1.playlist.length)
  # end

  def test_room_is_has_no_more_capacity
    @room_1.add_guest_to_room(@guest_1)
    @room_1.add_guest_to_room(@guest_2)
    @room_1.add_guest_to_room(@guest_3)
    @room_1.add_guest_to_room(@guest_4)
  end



end
