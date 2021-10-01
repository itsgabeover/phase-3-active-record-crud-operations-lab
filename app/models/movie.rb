class Movie < ActiveRecord::Base
    
  def self.create_with_title(title)
    Movie.create(title: title)
  end

  def self.first_movie
    Movie.first
  end
  
  def self.last_movie
    Movie.last
  end

  def self.movie_with_id(id)
    Movie.find(id)
  end

  def self.movie_count
    let movie_count = 0
    Movie.all.map { |movie| movie_count = movie_count + 1}
    movie_count
  end

end