require "pry"

require_relative "genre.rb"
require_relative "song.rb"

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|s| s.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map {|s| s.genre}
    end


end