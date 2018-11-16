class NewPlayer < ActiveRecord::Base

  has_many :bids

  #VIEW-Bids by player
  def player
    Bid.all.select {|bid| bid.new_player == self}
  end

end
