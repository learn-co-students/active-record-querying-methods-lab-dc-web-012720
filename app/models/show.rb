class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum("rating")
    end

    def self.most_popular_show
        # self.all.detect do |show|
        #     show.rating = self.highest_rating
        # end
        highest_rating = self.highest_rating
        self.find_by(rating: highest_rating)
    end

    def self.lowest_rating
        self.minimum("rating")
    end

    def self.least_popular_show
        # l_show = self.all.select do |show|
        #     show.rating == self.lowest_rating
        # end
        # l_show[0]
        lowest_rating = self.lowest_rating
        self.find_by(rating: lowest_rating)
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order("name ASC")
    end


end