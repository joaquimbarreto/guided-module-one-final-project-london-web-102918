Club.delete_all
NewPlayer.delete_all
Bid.delete_all

bournemouth = Club.create(:name=>"AFC Bournemouth")
arsenal = Club.create(:name=>"Arsenal")
brighton = Club.create(:name=>"Brighton & Hove Albion")
burnley = Club.create(:name=>"Burnley")
cardiff = Club.create(:name=>"Cardiff City")
chelsea = Club.create(:name=>"Chelsea")
crystal_palace = Club.create(:name=>"Crystal Palace")
everton = Club.create(:name=>"Everton")
fulham = Club.create(:name=>"Fulham")
huddersfield = Club.create(:name=>"Huddersfield")
leicester_city = Club.create(:name=>"Leicester City")
liverpool = Club.create(:name=>"Liverpool")
manchester_city = Club.create(:name=>"Manchester City")
manchester_united = Club.create(:name=>"Manchester United")
newcastle = Club.create(:name=>"Newcastle United")
southampton = Club.create(:name=>"Southampton")
tottenham = Club.create(:name=>"Tottenham")
watford = Club.create(:name=>"Watford")
west_ham = Club.create(:name=>"West Ham United")
wolves = Club.create(:name=>"Wolverhampton Wanderers")


ben_warren = NewPlayer.create(:name=>"Ben Warren", :current_club=>"Chelsea")
naby_keita = NewPlayer.create(:name=>"Naby Keita", :current_club=>"Liverpool")
christian_eriksen = NewPlayer.create(:name=>"Christian Eriksen", :current_club=>"Tottenham")
alexis_sanchez = NewPlayer.create(:name=>"Alexis Sanchez", :current_club=>"Manchester United")
benardo_silva = NewPlayer.create(:name=>"Bernado Silva", :current_club=>"Manchester City")
ronaldo = NewPlayer.create(:name=>"Cristiano Ronaldo", :current_club=>"Juventus")
dembele = NewPlayer.create(:name=>"Ousmane Dembele", :current_club=>"Barcelona")



# all_players = NewPlayer.all
# all_clubs = Club.all
# value_range = (10..100).to_a
# (1..10).each do |i|
#   Bid.create(:new_player=>all_players.sample, :club=> all_clubs.sample, :amount=>value_range.sample * 1000000)
# end
bidA = Bid.create(:new_player=>ben_warren, :club=> wolves, :amount=>10000000)
bidB = Bid.create(:new_player=>dembele, :club=> liverpool, :amount=>12000000)
bidC = Bid.create(:new_player=>benardo_silva, :club=> huddersfield,:amount=>7000000)
bidD = Bid.create(:new_player=>alexis_sanchez, :club=> arsenal, :amount=>4000000)
