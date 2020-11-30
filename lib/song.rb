
require 'pry'

class Song 

    extend Concerns::Findable

    attr_accessor :name, :artist
    attr_reader :genre

    @@all = []
    def initialize(name)
        @name = name 
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

    def genre=(genre)
        genre.songs << self unless genre.songs.include?(self)
        @genre = genre
    end 

    def artist=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
        artist.add_song(self)
    end 

    def self.create(name, artist = nil, genre = nil)
        song = Song.new(name, artist, genre)
        save 
    end

   
end 


