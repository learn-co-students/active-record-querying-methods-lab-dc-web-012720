class Show < ActiveRecord::Base
    def self.highest_rating
        movie_rating = Show.maximum(:rating)
        Show.all.find{|movie| movie_rating == movie.rating}.rating
    end
    
    #this method should return the show with the highest rating.
    #hint: use the highest_rating method as a helper method.
    def self.most_popular_show
        max_rating = highest_rating()
        Show.all.find {|movie| max_rating == movie.rating} #do i need .name?
    end
    
    #returns the lowest value in the ratings column.
    def self.lowest_rating
        Show.minimum(:rating)
    end
    
    #returns the show with the lowest rating.
    def self.least_popular_show
        min_rating = lowest_rating()
        Show.all.find {|movie| min_rating == movie.rating}
    end
    
    #returns the sum of all of the ratings.
    def self.ratings_sum
        Show.sum(:rating)
    end
    
    #returns an array of all of the shows that have a rating greater than 5.
    #hint: use the where Active Record method.
    def self.popular_shows
        Show.where("rating > ?", 5)
    end
    
    #returns an array of all of the shows sorted by alphabetical order 
    #according to their names... hint: use the order Active Record method.
    def self.shows_by_alphabetical_order
        Show.order("name ASC")
    end
end