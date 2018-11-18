class Artist

  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs << self
  end
  
  def add_song(song)
    @song = song
    song = self
  end
end