class AddPlayers < ActiveRecord::Migration
  def change
    add_column :bids, :new_player_id, :integer
  end
end
