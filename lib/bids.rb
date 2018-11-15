class Bid < ActiveRecord::Base

  belongs_to :new_player
  belongs_to :club

end
