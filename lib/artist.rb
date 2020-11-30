require 'pry'

class Artist 

    extend Concerns::Findable


    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
        save
    end 

    def save
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.destroy_all
        @@all.clear 
    end

    def add_song(song)
    
       song.artist = self 
     
    end

    



     def songs
        @songs
    end 

    def genres
        artist = Song.all.collect {|song| song.artist == self}
        artist.map {|song| song.genre}
    end 



end 
