require 'httparty'

response = HTTParty.get("http://worldtimeapi.org/api/timezone/Europe/London")
current_time_data = JSON.parse(response.body)

date_pattern = /\d{4}-\d{2}-\d{2}/ # pattern to match the current date
time_pattern = /\d{2}:\d{2}:\d{2}/ # pattern to match the current time
curr_time_data_str = current_time_data.to_s # convert data hash to a string so .match can work


puts "The current time is Europe/London is #{curr_time_data_str.match(date_pattern)} #{curr_time_data_str.match(time_pattern)}"
