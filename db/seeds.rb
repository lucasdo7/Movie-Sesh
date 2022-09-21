require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding json.."

api_key = "61c2b6f8c8b47f056629753697b7a396"
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{api_key}&language=en-US&page=1"

movies = JSON.parse(URI.open(url).read)
  movies["results"].each do |result|
  puts result
  # Movie.create!(title: result["original_title"]  )
  end

  puts "done"

# url = URI("https://movie-details1.p.rapidapi.com/imdb_api/movie?id=tt1375666")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["X-RapidAPI-Key"] = '83bb48f907mshd07d0d20d0867cep10c9ffjsn78093543fc78'
# request["X-RapidAPI-Host"] = 'movie-details1.p.rapidapi.com'

# response = http.request(request)
# puts response.read_body





# url = "http://www.omdbapi.com/?i=tt3896198&apikey=4a05cf83"

# movies = JSON.parse(URI.open(url).read)
# puts movies["title"]
