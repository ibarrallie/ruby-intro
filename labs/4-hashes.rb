# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://api.coindesk.com/v1/bpi/currentprice.json"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something like the output below.

# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.

# 1. Get input from a user using gets.chomp.
puts "How much bitcoin do you have?"
bitcoin = gets.chomp

# 2. The value will be a string, so you'll want to convert it to a Float.
bitcoin = bitcoin.to_f

#write this amount to screen
puts "You have #{bitcoin} bitcoin"

# 3. inspect the bitcoin_data hash
#2:25 in the lecture will get me to how to do this -- we look at the two greatest level keys to see what we need; we want the bpi one
#then we want the key USD and the rate_float
#get the conversion rate
conversion_rate = bitcoin_data["bpi"]["USD"]["rate_float"]

#write the conversion rate
puts "The current conversion rate is: #{conversion_rate}"

#calculate the user amount in US dollars
converted_amount = bitcoin * conversion_rate

#write the amount of money the user has in bitcoin
puts "You have #{converted_amount}"
