# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*
my_profile = {
    "name" => {"first" => "Allie", "last" => "Ibarra"},
    "location" => {"city" => "Chicago", "state" => "IL"},
#see above we have hashes in hashes, and below, we have arrays in hashes
    "timeline" => ["listening to Zoom", "waking up"]
}
# puts my_profile

# Accessing data from the hash
puts my_profile["timeline"][0]
puts my_profile["location"]["city"]


# More Complex Hashes