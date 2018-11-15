require 'rainbow'


class CommandLineInterface

def run
  greet
  first_menu
  confirm_club
  second_menu
  #what next?
end

def greet
    puts "Welcome to plBay!"
    hello = Joaquim::Base.new :font => 'helvetica'
    puts hello.asciify("Welcome to plBay!")
  end

def first_menu
puts "Please select your club number below."
puts "---------------------------"
   puts Rainbow("1|").blue.bright + " AFC Bournemouth"
   puts Rainbow("2|").blue.bright + " Arsenal"
   puts Rainbow("3|").blue.bright + " Brighton & Hove Albion"
   puts Rainbow("4|").blue.bright + " Burnley"
   puts Rainbow("5|").blue.bright + " Cardiff City"
   puts Rainbow("6|").blue.bright + " Chelsea"
   puts Rainbow("7|").blue.bright + " Crystal Palace"
   puts Rainbow("8|").blue.bright + " Everton"
   puts Rainbow("9|").blue.bright + " Fulham"
   puts Rainbow("10|").blue.bright + " Huddersfield"
   puts Rainbow("11|").blue.bright + " Leicester City"
   puts Rainbow("12|").blue.bright + " Liverpool"
   puts Rainbow("13|").blue.bright + " Manchester City"
   puts Rainbow("14|").blue.bright + " Manchester United"
   puts Rainbow("15|").blue.bright + " Newcastle United"
   puts Rainbow("16|").blue.bright + " Southampton"
   puts Rainbow("17|").blue.bright + " Tottenham"
   puts Rainbow("18|").blue.bright + " Watford"
   puts Rainbow("19|").blue.bright + " West Ham United"
   puts Rainbow("20|").blue.bright + " Wolverhampton Wanderers"
end

def confirm_club
  input = " "
  while input
    input = gets.chomp
    case
    when "1"
      puts "You have chosen AFC Bournemouth"
    when "2"
      puts "You have chosen Arsenal"
    when "3"
      puts "You have chosen Brighton & Albion Hove"
    when "4"
      puts "You have chosen Burnley"
    when "5"
      puts "You have chosen Cardiff City"
    when "6"
      puts "You have chosen Chelsea"
    when "7"
      puts "You have chosen Crystal Palace"
    when "8"
      puts "You have chosen Everton"
    when "9"
      puts "You have chosen Fulham"
    when "10"
      puts "You have chosen Huddersfield"
    when "11"
      puts "You have chosen Leicester City"
    when "12"
      puts "You have chosen Liverpool"
    when "13"
      puts "You have chosen Manchester City"
    when "14"
      puts "You have chosen Manchester United"
    when "15"
      puts "You have chosen Newcastle United"
    when "16"
      puts "You have chosen Southampton"
    when "17"
      puts "You have chosen Tottenham"
    when "18"
      puts "You have chosen Watford"
    when "19"
      puts "You have chosen West Ham United"
    when "20"
      puts "You have chosen Wolverhampton Wanderers"
    else
      puts "Please choose your club."
      break
    end
  end
end

#How will we confirm to the user which club they have chosen?
#There should be a Back option


def second_menu
  puts "Please select your number from the actions below."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " View bids"
  puts Rainbow("2|").blue.bright + " Make bids"
  puts Rainbow("3|").blue.bright + " Withdraw bids"
end

#How will we confirm to the user?

def third_menu_view
  puts "Please select your number from the actions below."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " All bids"
  puts Rainbow("2|").blue.bright + " Bids by club"
  puts Rainbow("3|").blue.bright + " Bids by player"
end


def third_menu_make
  puts "Please select your number from the actions below."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " View all players"
  puts Rainbow("2|").blue.bright + " Bid on a player"
end

def third_menu_withdraw
  puts "Please select your number from the actions below."
  puts "---------------------------"
  puts Rainbow("1|").blue.bright + " View own bids"
  puts Rainbow("2|").blue.bright + " Withdraw a bid"
  puts Rainbow("3|").blue.bright + " Withdraw all bids"
end


def showing_view_bids_listings
  input = " "
  while input
    input = gets.chomp
    case input
      when "1"
        puts "All bids"
        #Our method goes here
        #Our method goes here
        #Our method goes here
      when "2"
        puts "Bids by club "
        #Our method goes here
        #Our method goes here
        #Our method goes here
      when "3"
        puts "Bids by player "
        #Our method goes here
        #Our method goes here
        #Our method goes here
        break
      else
        puts "Please try again - make a choice of 1, 2 or 3."
      end
    end
  end
end

    def showing_make_bids_listings
      input = " "
      while input
        input = gets.chomp
        case input
          when "1"
            puts "All bids"
            #Our method goes here
            #Our method goes here
            #Our method goes here
          when "2"
            puts "Bids by club "
            #Our method goes here
            #Our method goes here
            #Our method goes here
            break
          else
            puts "Please try again - make a choice of 1, 2 or 3."
          end
        end
      end




        def showing_withdraw_bids_listings
          input = " "
          while input
            input = gets.chomp
            case input
              when "1"
                puts "All bids"
                #Our method goes here
                #Our method goes here
                #Our method goes here
              when "2"
                puts "Bids by club "
                #Our method goes here
                #Our method goes here
                #Our method goes here
              when "3"
                puts "Bids by player "
                #Our method goes here
                #Our method goes here
                #Our method goes here
                break
              else
                puts "Please try again - make a choice of 1, 2 or 3."
              end
            end
          end


def gets_user_input


end
