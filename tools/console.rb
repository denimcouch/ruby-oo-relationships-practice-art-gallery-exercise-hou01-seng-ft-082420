require_relative '../config/environment.rb'

karo = Artist.new("Karo", 5)
trent = Artist.new("Trenton", 20)

anya = Gallery.new("Anya Tish", "Houston")
insomnia = Gallery.new("Insomnia Gallery", "Houston")
inman = Gallery.new("Inman Galler", "Houston")
whitney = Gallery.new("Whitney Museum", "NYC")

trex = Painting.new("T-Rex", karo, 100, insomnia)
mound = Painting.new("Moundverse", trent, 3000, whitney)
chillona = Painting.new("Chillona", karo, 350, inman)
torpedo = Painting.new("Torpedo Boy", trent, 5000, anya)

karo.create_painting("Amor", 7000, anya )

binding.pry

puts "Bob Ross rules."
