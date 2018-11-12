class Movies

  attr_accessor :id, :title, :genre, :duration, :rating

  @@all = []

  def initialize(id = nil, title, genre, duration,rating)
      @id = id
      @title = title
      @genre = genre
      @duration = duration
      @rating = rating
      @@all << self
  end

  def self.all
      @@all
  end



end
