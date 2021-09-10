require_relative 'bot'
#creating an Object for bot with name Botty and datafile botty.bot
bot = Bot.new(name: "Botty", data_file: "botty.bot")
puts "plaese enter goodbye to stop conversation"
puts bot.greeting
# accepting inputs from user until say goodbye
while input = gets and input.chomp != 'goodbye'
  puts ">> " + bot.response_to(input)
end
puts bot.farewell