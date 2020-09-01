class Gallery
    attr_reader :name, :city
    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        self.class.all << self
    end
    def self.all
        @@all
    end

    def paintings
        Painting.all.select{|p| p.gallery == self}
    end
    def artists
        self.paintings.collect{|p| p.artist}
    end
    def artist_names
        self.artists.collect{|a| a.name}
    end
    def most_expensive_painting
        #looks at all the paintings in a galler
        #checks every price of every painting
        #returns the painting instance with the highest price
        
        #maybe use .each ?

    end

end
