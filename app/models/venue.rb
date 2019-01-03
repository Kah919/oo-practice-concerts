class Venue
  attr_accessor :title
  attr_reader :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select { |concert| concert.venue == self }
  end

  def bands
    concerts.map { |concert| concert.band }
  end

  def self.most_hometown_shows
    # self.all.select { |venue| venue.concerts.hometown == venue.concerts.city }
    c = Concert.all.select { |concert| concert.hometown_show? }
    
  end
end
