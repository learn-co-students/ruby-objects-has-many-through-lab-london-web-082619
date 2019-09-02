class Artist 

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end


    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def genres 
        Song.all.map{|song| song.genre}
    end

    #if you look in your song tab, when you create a song by for example calling Song.new, it expects to be passed three arguments - the name of the song, which is a string, the artist, and the genre.
    #we have two other files in this program, called artist and genre. So when you pass it those three arguments, the artist and genre arguments are creating associations to an instance (an object), of those two classes. like new_song = Song.new(“Above the Clouds”, Gangstarr, Rap). You can call new_song.genre to be shown what genre it belongs to.
    #In a similar way, you are doing this but with an iterator to go over all of the created songs and calling .genre on every single one of them. You iterate over all of them by doing Song.all, which accesses the @@all array of your Song class. Then you use .map on that array, and you want to call .genre on each of those. So
    #Song.all.map {|song| song.genre} returns all of the .genre associations of all of your songs
    



end
