class CreatePlayerClub < ActiveRecord::Migration
  def change
    create_table :bids do |t|
     t.integer :player_id
     t.integer :club_id
     t.amount :amount
  end
end
