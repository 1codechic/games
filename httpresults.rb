require 'http'

system "clear"
p "Welcome to the gaming app"
p " please choose your path"
p "1 - lottery"
p "2 - fortunes"

user_input = gets.chomp

if user_input == "1"
response = HTTP.get("http://localhost:3000/lotto")
p response.parse['winning_numbers']
elsif user_input == "2"
  response = HTTP.get("http://localhost:3000/fortunes")
  p response.parse['fortune']
end
