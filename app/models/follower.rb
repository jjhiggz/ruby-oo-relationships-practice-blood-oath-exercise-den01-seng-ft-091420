class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def followers_cults 
        Bloodoath.all.select do |oath|
            oath.follower.name == self.name
        end.map {|oath| oath.cult}
    end
    
    def join_cult cult
        Bloodoath.new(self, cult, 2020)
    end

    def self.of_a_certain_age int
        all.select do |follower|
            follower.age >= int
        end
    end

    def my_cults_slogans
        followers_cults.each do |cult|
            p cult.slogan
        end
    end

    def self.most_active
        all.max_by {|follower| follower.followers_cults.length}
    end

    def self.top_ten 
        sorted = all.sort_by {|followers| followers.followers_cults.length }
        sorted2 = all.sort {|a, b| b.followers_cults.length <=> a.followers_cults.length}
        sorted2.each_with_index do |val,index|
            puts "#{index + 1}. #{val.name}" 
        end
    end

end

# * `Follower#my_cults_slogans!`
#   * prints out all of the slogans for this follower's cults
# * `Follower.most_active`
#   * returns the `Follower` instance who has joined the most cults
# * `Follower.top_ten`
#   * returns an `Array` of followers; they are the ten most active followers




# # * `Follower#cults`
# #   * returns an `Array` of this follower's cults
# * `Follower#join_cult`
#   * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
# * `Follower.all`
#   * returns an `Array` of all the followers
# * `Follower.of_a_certain_age`
#   * takes an `Integer` argument that is an age and returns an `Array` of followers who are the given age or older

