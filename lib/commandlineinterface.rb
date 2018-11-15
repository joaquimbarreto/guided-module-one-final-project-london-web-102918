require 'rainbow'


class CommandLineInterface

def run
  greet
  selected_club = select_club
  second_menu
  confirm_menu_choice
end

def greet
    puts "Welcome to plBay!"
  end

def select_club
  puts "Please select your club number below."
  puts "---------------------------"
  Club.all.each_with_index do |club, i|
    puts Rainbow("#{i + 1}|").blue.bright + " #{club.name}"
  end
  confirm_club
end

def confirm_club
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


def second_menu
  puts "Please select the number for the action you would like to take."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " View bids"
  puts Rainbow("2|").blue.bright + " Make bids"
  puts Rainbow("3|").blue.bright + " Withdraw bids"
end

def confirm_menu_choice
input = " "
  while input
    input = gets.chomp
  case input
  when "1"
    third_menu_view
  when "2"
      third_menu_make
    when "3"
        third_menu_withdraw
      break
      else
        puts "Please try again. Make a choice between 1 and 3."
      end
    end
  end
end


def third_menu_view
  puts "Please select your number from the actions below."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " All bids"
  puts Rainbow("2|").blue.bright + " Bids by club"
  puts Rainbow("3|").blue.bright + " Bids by player"

  input = " "
  while input
    input = gets.chomp
    case input
    when "1"
      #shows isting of bids
    when "2"
        #shows bids by club
      when "3"
          #shows bids by player
        break
        else
          puts "Please try again. Make a choice between 1 and 3."
        end
      end
    end




def third_menu_make
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
    when "2"
        #shows bids by player
        break
        else
          puts "Please try again. Choose 1 or 2."
        end
      end
    end



def third_menu_withdraw
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
