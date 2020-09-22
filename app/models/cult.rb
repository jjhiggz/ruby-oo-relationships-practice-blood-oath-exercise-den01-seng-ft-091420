class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end 

    def self.all
        @@all
    end

    def show_followers
        Bloodoath.all.select do |oath|
            oath.cult == self
        end.map {|found_followers| found_followers.follower}
    end

    def recruit_follower follower
        Bloodoath.new(follower, self, 2020)
    end

    def cult_population 
        show_followers.length
    end

    def self.find_by_name cult_name
        self.all.find do |cult|
            cult.name == cult_name
        end
    end

    def self.find_by_location locate
        self.all.select do |cult|
            cult.location == locate
        end
    end

    def self.find_by_founding_year year
        self.all.select do |cult|
            cult.founding_year == year
        end
    end

    def average_age 
       
    end
end




# * `Cult#average_age`
#   * returns a `Float` that is the average age of this cult's followers
# * `Cult#my_followers_mottos`
#   * prints out all of the mottos for this cult's followers
# * `Cult.least_popular`
#   * returns the `Cult` instance who has the least number of followers :(
# * `Cult.most_common_location`
#   * returns a `String` that is the location with the most cults








# `Cult#recruit_follower`
#   * takes in an argument of a `Follower` instance and adds them to this cult's list of followers
# * `Cult#cult_population`
#   * returns an `Integer` that is the number of followers in this cult
# * `Cult.all`
#   * returns an `Array` of all the cults
# * `Cult.find_by_name`
#   * takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
# * `Cult.find_by_location`
#   * takes a `String` argument that is a location and returns an `Array` of cults that are in that location
# * `Cult.find_by_founding_year`
#   * takes an `Integer` argument that is a year and returns all of the cults founded in that year
