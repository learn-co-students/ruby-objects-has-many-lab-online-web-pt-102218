require "pry"

class Artist

  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
      @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    creation = Song.new(song_name)
    creation.save
    self.add_song(creation)
  end
  
  def self.song_count
    Song.all.length - 1
  end
end