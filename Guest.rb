class Guest

  attr_accessor(:name, :wallet, :favourite_song)

  def initialize( name, wallet, favourite_song )
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

end
