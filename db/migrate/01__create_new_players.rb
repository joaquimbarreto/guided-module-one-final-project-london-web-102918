class CreateNewPlayers < ActiveRecord::Migration[4.2]
  def change
    create_table :new_players do |t|
     t.string :name
     t.string :current_club
    end
  end
end
