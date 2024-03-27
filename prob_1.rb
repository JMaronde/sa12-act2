require 'httparty'

response = HTTParty.get("https://api.github.com/users/z0faas/repos")
repos_info = JSON.parse(response.body)

max_star_repo = repos_info.max_by { |repo| repo["stargazers_count"]} # gets the repo with the max stargazers_count value

puts "The repo with the most stars is #{max_star_repo["name"]} with #{max_star_repo["stargazers_count"]} star(s)"
puts max_star_repo["description"]
puts max_star_repo["url"]
