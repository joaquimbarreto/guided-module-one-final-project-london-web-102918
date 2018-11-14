class CreateBids < ActiveRecord::Migration[4.2]
  def change
    create_table :bids do |t|
     t.integer :player_id
     t.integer :club_id
     t.integer :amount
    end
  end
end
