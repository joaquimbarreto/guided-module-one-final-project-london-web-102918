Club.delete_all
Player.delete_all
Bids.delete_all

manchester_united = Club.create(:name=>'Manchester United')
liverpool = Club.create(:name=>'Liverpool')
chelsea = Club.create(:name=>'Chelsea')
tottenham = Club.create(:name=>'Tottenham')

ben_warren = Player.create(:name=>'Ben Warren', :current_club=>'Chelsea')
naby_keita = Player.create(:name=>'Naby Keita', :current_club=>'Liverpool')
christian_eriksen = Player.create(:name=>'Christian Eriksen', :current_club=>'Tottenham')
alexis_sanchez = Player.create(:name=>'Alexis Sanchez', :current_club=>'Manchester United')

bidA = Bid.create(:amount=>10000000)
bidB = Bid.create(:amount=>12000000)
bidC = Bid.create(:amount=>7000000)
bidD = Bid.create(:amount=>4000000)









hotline_bling = Song.create(:name=>'Hotline Bling')
thriller = Song.create(:name=>'Thriller')

drake = Artist.create(:name=>'Drake')
mj = Artist.create(:name=>'Michael Jackson')

rap = Genre.create(:name=>'Rap')
pop = Genre.create(:name=>'Pop')

hotline_bling.artist = drake
thriller.artist = mj

drake.songs << hotline_bling
mj.songs << thriller

pop.songs << thriller
rap.songs << hotline_bling
