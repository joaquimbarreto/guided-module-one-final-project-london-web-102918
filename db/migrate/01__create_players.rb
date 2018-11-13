class CreateNewPlayers < ActiveRecord::Migration
  def change
    create_table :new_players do |t|
     t.string :name
  end
end
