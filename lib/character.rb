class Character

  attr_accessor :id, :name, :description, :gender

  @@all = []

  def initialize(id = nil, name, description, gender)
      @id = id
      @name = name
      @description = description
      @gender = gender
      @@all << self
  end

  def self.all
      @@all
  end



end
