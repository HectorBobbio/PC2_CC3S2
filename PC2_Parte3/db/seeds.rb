# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
more_movies = [

{:title => 'Ganibal', :rating => 'G',

:release_date => '25-Nov-1992'},

{:title => 'Fuerza bruta', :rating => 'R',

:release_date => '21-Jul-1989'},

{:title => 'The Ring', :rating => 'PG-13',

:release_date => '10-Aug-2011'},

{:title => 'Alien: The Return ', :rating => 'PG',

:release_date => '12-Jun-1981'}

]

more_movies.each do |movie| 
    Movie.create!(movie) 
end

puts "Seeded correctly!"