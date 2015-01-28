# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

directors_file = Rails.root.join('lib', 'seeds', 'directors.json').to_s
director_hashes = JSON.parse(open(directors_file).read)

Director.destroy_all
director_hashes.each do |director_hash|
  d = Director.new
  d.name = director_hash["name"]
  d.image_url = director_hash["image_url"]
  d.bio = director_hash["bio"]
  d.dob = director_hash["dob"]
  d.save
end
puts "There are now #{Director.count} rows in the directors table."

movies_file = Rails.root.join('lib', 'seeds', 'movies.json').to_s
movie_hashes = JSON.parse(open(movies_file).read)

Movie.destroy_all
movie_hashes.each do |movie_hash|
  m = Movie.new
  m.title = movie_hash["title"]
  m.year = movie_hash["year"]
  m.duration = movie_hash["duration"]
  m.description = movie_hash["description"]
  m.image_url = movie_hash["image_url"]
  m.save
end
puts "There are now #{Movie.count} rows in the movies table."

actors_file = Rails.root.join('lib', 'seeds', 'actors.json').to_s
actor_hashes = JSON.parse(open(actors_file).read)

Actor.destroy_all
actor_hashes.each do |actor_hash|
  a = Actor.new
  a.name = actor_hash["name"]
  a.image_url = actor_hash["image_url"]
  a.bio = actor_hash["bio"]
  a.dob = actor_hash["dob"]
  a.save
end
puts "There are now #{Actor.count} rows in the actors table."
