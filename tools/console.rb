require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ben = Follower.new("Ben", 19, "Lets get wet")
jeff = Follower.new "Jeff", 28, "Lets get dry actually"
keith = Follower.new "Keith", 98, "Im not allowed to be wet"
lamar = Follower.new "Lamar", 31, "I have become wet, by no fault of my own"
greg = Follower.new "greg", 20, "fun"
lisa = Follower.new "lisa", 10, "Saxophone noises"
fran = Follower.new "Fran", 44, "lolololo"
mira = Follower.new "mira", 2, "pissssss"
kint = Follower.new "kint", 3, "windowwww"
mary = Follower.new "mary", 15, "ollllld"

cult1 = Cult.new "Pool", "Houston", 1980, "wet"
cult2 = Cult.new "Space Cult", "Luxembourg", 1810, "yes"
cult3 = Cult.new "SoulCycle", "New York", 2010, "weee"
cult4 = Cult.new "Eeeeee", "New York", 2011, "cool stuff folks"

bO1 = Bloodoath.new(ben, cult1, 2019)
bO2 = Bloodoath.new(lamar, cult1, 2017)
bO3 = Bloodoath.new(lamar, cult2, 2014)
bO4 = Bloodoath.new(lisa, cult4, 2020)
bO5 = Bloodoath.new(keith, cult3, 2019)
bO6 = Bloodoath.new(lamar, cult3, 2018)
bO7 = Bloodoath.new(ben, cult4, 2020)
b08 = Bloodoath.new(lisa, cult3, 2019)
bO9 = Bloodoath.new(lamar, cult4, 2017)
b10 = Bloodoath.new(greg, cult1, 2014)
b11 = Bloodoath.new(lisa, cult2, 2020)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
#to run code: tools/console.rb