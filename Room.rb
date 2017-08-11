class Room

  attr_accessor(:number, :capacity, :playlist, :guestlist)

  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @playlist = []
    @guestlist = []
  end

  def add_songs_to_playlist(song)
    @playlist << song
    # songs.each{|song|
  end

  def add_guest_to_room(guests)
    if @guestlist.length < @capacity
      @guestlist.push(guests)
    else
      return "Room full"
    end
  end

  def remove_guest_from_room(guests)
    @guestlist.delete(guests)
  end


end
