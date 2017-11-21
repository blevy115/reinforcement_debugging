def select_cards(possible_cards, hand)

  until hand.count == 3
  possible_cards.cycle do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      if hand.include? (current_card)
        puts "Hand already contains that card"
      else
      if hand.count < 3
      hand << current_card
      if hand.count == 3
        return hand
      end
    else
      puts "Card could not be selected, hand is at max capacity."
    end
    end
  end
end
end
return hand

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
