class Room

  attr_accessor(:number, :capacity, :playlist, :guestlist, :bank)

  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @playlist = []
    @guestlist = []
    @bank = 0
  end

  def add_songs_to_playlist(song)
    @playlist << song
  end

  def add_guest_to_room(guest)
    if @guestlist.length < @capacity && guest.wallet >= 10
       @guestlist.push(guest)
        @bank += 10
        guest.wallet -= 10
          if @playlist.find() { |song| song.name == guest.favourite_song }
            return "Whoo!"
          end
    else return "Not tonight"
    end
  end

  def remove_guest_from_room(guest)
    @guestlist.delete(guest)
  end

end
