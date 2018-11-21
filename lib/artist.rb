require "pry"

class Artist
  attr_accessor :name, :song
  @@songs = []


  def initialize(name)
    @name = name
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@songs << song
    song.artist = self
  end

  def self.song_count
    binding.pry
    self.songs.length
  end

  def songs
    @@songs
  end

end
