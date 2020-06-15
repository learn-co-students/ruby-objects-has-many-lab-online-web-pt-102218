class Artist
    attr_accessor :name, :songs
    @@library =[]
    def initialize(name)
        @name=name
        @songs=[]
    end
    def add_song(song)
        song.artist=self
        @songs.push(song)
        @@library.push(song)
    end
    def add_song_by_name(songname)
        newsong = Song.new(songname)
        self.add_song(newsong)
    end
    def self.song_count
        @@library.length
    end
end