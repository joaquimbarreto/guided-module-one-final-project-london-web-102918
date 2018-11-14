class NewPlayer < ActiveRecord::Base

  has_many :bids

  def all_bids
    self.bids
  end

  def num_of_bids
    all_bids.count
  end

  def highest_bid
    all_bids.may_by(&:amount)
  end

  def lastest_bid
    bids.last
  end

  def bids_by_club(club)
    all_bids.select {|club| club.name == club}
  end


end
