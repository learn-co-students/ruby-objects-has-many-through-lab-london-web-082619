# madonna = Artist.new("Madonna")
# pop = Genre.new("pop")
 
# into_the_groove = Song.new("Into the Groove", madonna, pop)

class Song 

    @@all = []
    attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre) #Song.new(name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end


end