class Genre

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
        Song.all.select {|song|song.genre == self}
    end
    #iterates over the @@all array in Song class and returns a new array with all the songs that are of the genre self (whatever genre the instance method is called on)

    def artists 
        songs.map do |song|
            song.artist
        end
    end
    #here you are calling on the earlier created songs method, which selects all songs of the particular genre. You are iterating over each of the elements in that newly returned array and calling .artist on each to be returned the artist associations
    








end
