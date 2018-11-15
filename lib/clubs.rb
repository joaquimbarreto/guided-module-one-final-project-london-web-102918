class Club < ActiveRecord::Base

  has_many :bids

  def new_bid(player, amount)
    bid = Bid.new
    if player.current_club == self
      puts "Cannot bid your own player"
    else
      bid.save
      bid
    end
  end

  def all_bids
    self.bids
  end

  def bids_made_to_player(player)
    all_bids.select {|player| player.name = player}
  end

  def highest_bid
      all_bids.max_by(&:amount)
  end

  def withdraw_player_bid(player: name)
    bids.find_by(player: id)
  end

  def withdraw_all_bids
    self.bids.destroy_all
  end

end
