class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self 
  end
  def self.all
    @@all 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

  def paintings
    Painting.all.select{|p| p.artist == self}
  end
  def galleries
    self.paintings.collect{|p| p.gallery}
  end
  def cities
    self.galleries.collect{|g| g.city}
  end

  def self.total_experience
    (self.all.collect{|a| a.years_experience}).sum
  end
  def most_prolific
    #looks at each artist
    #determines number of paintings per year of experience
    #returns the artist instance with the highest number
    
  end


end
