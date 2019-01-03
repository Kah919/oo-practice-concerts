class Band
  attr_accessor :name
  attr_reader :hometown
  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def play_in_venue(venue, date)
    Concert.new(date, self, venue)
  end

  def concerts
    Concert.all.select { |concert| concert.band == self }
  end

  def self.all_introductions
    self.all.each { |band| puts "Hello, we are #{band.name} and we're from #{band.hometown}"}
  end

  def venues
    concerts.map { |concert| concert.venue }
  end

end
