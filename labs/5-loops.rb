# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

# EXERCISE
# Build a deck of cards. Given the following arrays of card data,
# use a loop to write out the cards to the screen.
clubs = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
diamonds = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
hearts = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
spades = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

# for club in clubs
#     puts "#{club} of clubs"
# end

# for diamond in diamonds
#     puts "#{diamond} of diamonds"
# end

# for heart in hearts
#     puts "#{heart} of hearts"
# end

# for spade in spades
#     puts "#{spade} of spades" 
# end

# for rank in clubs
#     puts "#{rank} of Clubs"
#     puts "#{rank} of Diamonds"
#     puts "#{rank} of Hearts"
#     puts "#{rank} of Spades"
#   end

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

for rank in ranks
    for suit in suits
        puts "#{rank} of #{suit}"
    end
end


# Sample output:
# 2 of Clubs
# 3 of Clubs
# 4 of Clubs
# ...etc
# Queen of Spades
# King of Spades
# Ace of Spades

# CHALLENGE #1
# The arrays are identical for each suit and can be simplified by using
# a ranks array as seen below. Try to complete the exercise again by
# combining these arrays.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

# CHALLENGE #2
# Deal a poker hand. Shuffle the deck and "deal" (i.e. display) a 5 card hand (i.e. 5 cards from the deck).
# You will want to look at the documentation for Arrays: https://ruby-doc.org/core-2.7.0/Array.html
#For the challenge, we don't just want to see all the combinations of ranks and suits, but we want to store them as cards in a new array that we can then shuffle and deal a hand from
#We'll need to add a card to arrary
#first make the empty array that we'll fill with code
deck = []

#we're pushing cards to the deck
# ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
# suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

# for rank in ranks
#   for suit in suits
#     card = "#{rank} of #{suit}"
#     deck.push(card)
#   end
# end

# #now we have a perfect deck, but we need to shuffle it; we find this ability through the ruby documentation

# shuffled_deck = deck.shuffle

# #using more ruby documentation https://ruby-doc.org/core-2.7.0/Array.html#method-i-5B-5D
# hand = shuffled_deck[0,5]
# puts hand

# for card in hand
#   puts card
# end

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

deck = []
for rank in ranks
  for suit in suits
    card = "#{rank} of #{suit}"
    deck.push(card)
  end
end

shuffled_deck = deck.shuffle
hand = shuffled_deck[0,5]

for card in hand
  puts card
end