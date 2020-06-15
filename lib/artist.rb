class Artist

  attr_accessor :name

@@songs= []

  def initialize (name)
    self.name = name
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song(song)
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(song_title)
    new_song = Song.new(song_title)
    new_song.artist = self
    @@songs << new_song
  end

  def self.song_count
    @@songs.length
  end

end
