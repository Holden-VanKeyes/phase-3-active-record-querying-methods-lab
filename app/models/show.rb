class Show < ActiveRecord::Base


    def self.highest_rating
     self.maximum(:rating)
    end

    def self.most_popular_show
        highest = self.maximum(:rating)
     self.find_by(rating: highest)
    
    end

    def self.lowest_rating
        self.minimum(:rating)
     
    end
    

    def self.least_popular_show
        lowest = self.minimum(:rating)
     self.find_by(rating: lowest)
    
    end

    def self.ratings_sum
      self.sum(:rating)
    end

    def self.popular_shows
      self.where('rating > 5')
    end

    def self.shows_by_alphabetical_order
      self.order(name: :asc)
    end
end











# - `.shows_by_alphabetical_order`: Returns an 
# array of all of the shows sorted in
#   alphabetical order according to their names. 
#   **Hint**: use the `.order` Active
#   Record method.