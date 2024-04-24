# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 3-arrays.rb

# EXERCISE
# Create a "shared" shopping list with a friend
# Create two data structures - one for your list of stuff, and one
# for your friend, e.g. you want milk, eggs, and bacon, and
# your friend wants beer, cookies, and apples.
# Programmatically combine the two arrays into a single list,
# sort the result (alphabetically), and write it to the screen.
# If the two lists contain the same item, only show it once!
# Lastly, display each item in the list prepended with "buy ".

# HINTS
# Learn to read the documentation!
# https://ruby-doc.org/core-2.7.0/Array.html

#create a shopping list for me
my_list = ["apples", "ice cream", "yogurt"]
#create a shopping list for my fried
her_list = ["apples", "grapes"]
#combine the two lists into a single list
our_list = my_list + her_list
#sort the results alphabetically  
sorted_list = our_list.sort
#show same items once
unique_list = sorted_list.uniq
#or all at once! (also interesting to note you can do multiple .___ at the end)
unique_list = (our_list).uniq.sort
#display each list item with the word "buy"
puts "Buy #{unique_list[0]}"
puts "Buy #{unique_list[1]}"
puts "Buy #{unique_list[2]}"
puts "Buy #{unique_list[3]}"