class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        self.concerts.where(date: date).first
    end

    def most_frequent_band
        # self.concerts.max_by {|i| self.concerts.band_id.count(i)}

        # c =self.concerts.max_by {|a| a.band_id.size}
        # c.band

        # self.concerts.group(:band_id).select(:band_id).order("count(*) DESC").first.band
    end
end