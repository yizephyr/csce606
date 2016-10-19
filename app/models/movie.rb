class Movie < ActiveRecord::Base
    #attr_accessible :title, :rating, :description, :release_date
    
    def self.all_ratings
      ary = Array.new
      self.select("rating").uniq.each {|ele| ary.push(ele.rating)}
      ary.sort.uniq
    end
    
end
