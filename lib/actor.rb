class Actor

  attr_accessor :id, :name, :gender, :city,

  @@all = []

  def initialize(id = nil, title, gender, city)
      @id = id
      @name = name
      @gender = gender
      @city = city
      @@all << self
  end

  def self.all
      @@all
  end



end
