class Genre 

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

    def songs
        @songs
    end

    def artists
        @songs.collect {|song| song.artist}

    end 

   
end 