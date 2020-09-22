class Bloodoath
    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def initialize follower, cult, initiation_date
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def BO_initiation_date 
        Bloodoath.all.find do |oath|
        oath.initiation_date == self.initiation_date
        end.initiation_date
    end
end



# * `BloodOath#initiation_date`
#   * returns a `String` that is the initiation date of this blood oath in the format _YYYY-MM-DD_.
# * `BloodOath.all`
#   * returns an `Array` of all the blood oaths