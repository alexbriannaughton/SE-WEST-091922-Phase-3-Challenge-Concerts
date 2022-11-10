class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        self.concerts.create(venue: venue, date: date)
    end

    def all_introductions
        self.concerts.map(&:introduction)
    end

    def self.most_performances
        self.all.max_by {|b| b.concerts.size}
    end


end