require 'httparty'

response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")
crypto_data = JSON.parse(response.body)

crypto_data.sort_by { |crypto| crypto["market_cap"] } # sorts by market capitalization


crypto_data.first(5).each do |crypto|
  puts "#{crypto["market_cap_rank"]}.  #{crypto["name"]}"
  puts "Current Price: $#{crypto["current_price"]}"
  puts "Market Cap: $#{crypto["market_cap"]}"
  puts ""
end
