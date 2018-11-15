class Club < ActiveRecord::Base

  has_many :bids

  #VIEW-Bids by club
  def bids_by_club(club)
    all_bids.select {|club| club.name == club}
  end

  #VIEW-Bids by player
  def bids_by_club(player)
    all_bids.select {|player| player.name == player}
  end

  #MAKE-Bid for a particular player
  def new_bid(player, amount)
    bid = Bid.new
    if player.current_club == choosen_club
      puts "Cannot bid your own player"
    else
      bid.save
      bid
    end
  end


  #WITHDRAW-Bid for a particular player
  def withdraw_player_bid(new_player: name)
    bids.find_by(new_player: id)
  end

  #WWITHDRAW- all bids
  def withdraw_all_bids(choosen_club)
    self.bids.destroy_all
  end

end
