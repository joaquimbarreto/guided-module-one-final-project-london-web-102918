require 'rainbow'

class CommandLineInterface

  def run
    greet
    display_club_choices
    selected_club = select_club
    second_menu(selected_club)
  end

  def greet
    puts "Welcome to plBay!"
  end

  def display_club_choices
    puts "Please select your club number below."
    puts "---------------------------"
    Club.all.each_with_index do |club, i|
      puts Rainbow("#{i + 1}|").blue.bright + " #{club.name}"
    end
  end

  def select_club
    input = " "
    club = nil
    while !club
      input = gets.chomp
      if input == input.to_i.to_s
        club = Club.all[input.to_i - 1]
      end
      if club
        puts "You have selected #{club.name}"
      else
        puts "Please try again. Make a choice between 1 and 20."
      end
    end
    club
  end


  def second_menu(selected_club)
    puts "Please select the number for the action you would like to take."
    puts "---------------------------"
    puts Rainbow("1|").blue.bright + " View bids"
    puts Rainbow("2|").blue.bright + " Make bids"
    puts Rainbow("3|").blue.bright + " Withdraw bids"
    confirm_second_menu_choice(selected_club)
  end

  def confirm_second_menu_choice(selected_club)
    input = " "
    while input
      input = gets.chomp
      case input
      when "1"
        view_bids(selected_club)
        break
      when "2"
        make_bids(selected_club)
        break
      when "3"
        withdraw_bids(selected_club)
        break
      else
        puts "Please try again. Make a choice between 1 and 3."
      end
    end
    second_menu(selected_club)
  end


  def display_bid(bid)
    puts "#{bid.club.name} bid on #{bid.new_player.name} at #{bid.new_player.current_club} for #{bid.amount}"
  end

  def view_bids(selected_club)
    puts "Please select your number from the actions below."
    puts "---------------------------"
    puts Rainbow("1|").blue.bright + " All bids"
    puts Rainbow("2|").blue.bright + " Bids by #{selected_club.name}"
    puts Rainbow("3|").blue.bright + " Bids by player"

    input = " "
    while input
      input = gets.chomp
      case input
      when "1"
        #shows isting of bids
        Bid.all.each{|bid| display_bid(bid)}
        break
      when "2"
          #shows bids by club
          selected_club.bids.each{|bid| display_bid(bid)}
          break
      when "3"
          #shows bids by player

          NewPlayer.all.each do |player|
            puts "#{player.name} ---- #{player.current_club}"
            player.bids.each{|bid| display_bid(bid)}
            puts "-----"
          end
          break
        else
          puts "Please try again. Make a choice between 1 and 3."
        end
      end
  end

  def make_bids(selected_club)
    puts "Please select your number from the actions below."
    puts "---------------------------"
    puts Rainbow("1|").blue.bright + " View all players"
    puts Rainbow("2|").blue.bright + " Bid on a player"

    input = " "
    while input
      input = gets.chomp
      case input
      when "1"
        #shows all players
        NewPlayer.all.each_with_index do |player, i|
          puts "#{i + 1}: #{player.name}"
        end
        make_bids(selected_club)
        break
      when "2"
          # bid on a player
          bid_on_player(selected_club)
          break
      else
        puts "Please try again. Choose 1 or 2."
      end
    end
  end

  def bid_on_player(selected_club)
    puts "Please select the player number."
    puts "---------------------------"
    puts Rainbow("1|").blue.bright + " Ben Warren"
    puts Rainbow("2|").blue.bright + " Naby Keita"
    puts Rainbow("3|").blue.bright + " Christian Eriksen"
    puts Rainbow("4|").blue.bright + " Alexis Sanchez"
    puts Rainbow("5|").blue.bright + " Benardo Silva"
    puts Rainbow("6|").blue.bright + " Dembele"

    input = gets.chomp
    # find the player in the Player.all array (Sam comment)

    puts "Please input the amount you would like to bid."
    input = gets.chomp

    # bid = Bid.create(new_player: player, club: selected_club, amount: input.to_i)
    # display_bid(bid)
  end

  def withdraw_bids
    puts "Please select your number from the actions below."
    puts "---------------------------"
    puts Rainbow("1|").blue.bright + " View own bids"
    puts Rainbow("2|").blue.bright + " Withdraw a bid"
    puts Rainbow("3|").blue.bright + " Withdraw all bids"


    input = " "
    while input
      input = gets.chomp
      case input
      when "1"
        #shows bids to withdraw
      when "2"
          #shows bids for players
        when "3"
            #shows withdraw for all bids
          break
          else
            puts "Please try again. Make a choice between 1 and 3."
          end
      end
  end

end



# def showing_view_bids_listings
#   input = " "
#   while input
#     input = gets.chomp
#     case input
#       when "1"
#         puts "All bids"
#         #Our method goes here
#         #Our method goes here
#         #Our method goes here
#       when "2"
#         puts "Bids by club "
#         #Our method goes here
#         #Our method goes here
#         #Our method goes here
#       when "3"
#         puts "Bids by player "
#         #Our method goes here
#         #Our method goes here
#         #Our method goes here
#         break
#       else
#         puts "Please try again - make a choice of 1, 2 or 3."
#       end
#     end
#   end
#
#
#     def showing_make_bids_listings
#       input = " "
#       while input
#         input = gets.chomp
#         case input
#           when "1"
#             puts "All bids"
#             #Our method goes here
#             #Our method goes here
#             #Our method goes here
#           when "2"
#             puts "Bids by club "
#             #Our method goes here
#             #Our method goes here
#             #Our method goes here
#             break
#           else
#             puts "Please try again - make a choice of 1, 2 or 3."
#           end
#         end
#       end
#
#
#
#
#         def showing_withdraw_bids_listings
#           input = " "
#           while input
#             input = gets.chomp
#             case input
#               when "1"
#                 puts "All bids"
#                 #Our method goes here
#                 #Our method goes here
#                 #Our method goes here
#               when "2"
#                 puts "Bids by club "
#                 #Our method goes here
#                 #Our method goes here
#                 #Our method goes here
#               when "3"
#                 puts "Bids by player "
#                 #Our method goes here
#                 #Our method goes here
#                 #Our method goes here
#                 break
#               else
#                 puts "Please try again - make a choice of 1, 2 or 3."
#               end
#             end
#           end
