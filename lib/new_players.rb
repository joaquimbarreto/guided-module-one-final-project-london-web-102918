class NewPlayer < ActiveRecord::Base

  has_many :bids

  #VIEW-Bids by player
  def bids_by_player
    Bid.all.select {|bid| bid.new_player == self}
  end

end
