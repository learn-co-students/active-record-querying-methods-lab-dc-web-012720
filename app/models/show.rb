class Show < ActiveRecord::Base 
    def self.highest_rating
        Show.maximum(:rating)
    end 
    def self.most_popular_show
        a = Show.highest_rating
        Show.where(:rating => a)[0]
    end
    def self.lowest_rating
        Show.minimum(:rating)
    end 
    def self.least_popular_show
        Show.where(:rating => Show.lowest_rating)[0]
    end 
    def self.ratings_sum
        Show.sum(:rating)
    end 
    def self.popular_shows
        Show.where("rating > '5'")
    end 
    def self.shows_by_alphabetical_order
        Show.order(:name)
        # : returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
    end 
end