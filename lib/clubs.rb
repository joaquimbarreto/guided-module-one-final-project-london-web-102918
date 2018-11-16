class Club < ActiveRecord::Base

  has_many :bids

  # #VIEW-Bids by club
  # def bids_by_club
  #   Bid.all.select {|bid| bid.club == self}
  # end


  #MAKE-Bid for a particular player
  def new_bid(player, amount)
    bid = Bid.new(player, self, amount)
    if player.current_club == selected_club
      puts "Cannot bid your own player"
    else
      bid.save
      bid
    end
  end


  #WITHDRAW-Bid for a particular player
  def withdraw_player_bid(player)
    self.bids.find_by(name: player).destroy
  end

  #WWITHDRAW- all bids
  def withdraw_all_bids
    self.bids.destroy_all
  end

end
