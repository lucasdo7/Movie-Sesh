# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
api_key = "61c2b6f8c8b47f056629753697b7a396"
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{api_key}&language=en-US&page=1"

puts "seeding json.."

movies = JSON.parse(URI.open(url).read)
movies["results"].each do |result|
  Movie.create!(title: result["original_title"], overview: result["overview"], rating_imdb: result["vote_average"],
                release_year: result["release_date"], language: result["original_language"], director: result["adult"],
                genre: result["genre_ids"], poster: result["poster_path"], runtime: result["vote_count"])
end

puts "done"
