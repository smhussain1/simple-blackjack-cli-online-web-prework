def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts"Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1+card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  until input == "h" || input == "s"
    invalid_command
    prompt_user
    input = get_user_input
  end
  
  if input == "h" 
    card = deal_card
    card_total += card #== cand_total = card_total + card
    
  elsif input == "s"
    card_total
  end
 
end

def invalid_command
  puts "Please enter a valid command"
end

  

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sam = initial_round
  
  until card_sam > 21
    card_sam = hit?(card_sam)
    display_card_total(card_sam)
  end
  
  end_game(card_sam)
end
    
