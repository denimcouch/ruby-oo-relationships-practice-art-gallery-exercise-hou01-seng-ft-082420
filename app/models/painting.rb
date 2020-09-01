class Painting
  attr_reader :title, :price, :artist, :gallery
  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @artist = artist
    @price = price
    @gallery = gallery
    self.class.all << self
  end
  def self.all
    @@all
  end

  def self.total_price
    (self.all.collect{|p| p.price}).sum
  end

end
