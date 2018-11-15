class RemovePlayers < ActiveRecord::Migration
  def change
    remove_column :bids, :player_id
  end
end
