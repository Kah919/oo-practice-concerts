require 'bundler/setup'
Bundler.require
require_all 'app'

b1 = Band.new("Flatiron", "NY")
b2 = Band.new("T-Swizzle", "NY")
b3 = Band.new("Band", "Somewhere")
b4 = Band.new("Pupper", "Puppy Town")

v1 = Venue.new("Turing", "NY")
v2 = Venue.new("Borg", "NY")
v3 = Venue.new("Summoner", "Rift")

c1 = Concert.new("september", b1, v1)
c2 = Concert.new("jan", b1, v2)
c3 = Concert.new("jul", b4, v3)
c4 = Concert.new("now", b4, v1)






binding.pry
