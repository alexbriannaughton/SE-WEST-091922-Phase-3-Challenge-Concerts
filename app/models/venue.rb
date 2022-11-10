class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        self.concerts.where(date: date).first
    end

    def most_frequent_band
        self.bands.max_by {|a| a.concerts.count}
    end
end