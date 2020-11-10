# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
    artist = Artist.create!(
        name: Faker::Artist.name,
        life_death: Faker::Date.between(from: '1700-09-23', to: '1940-09-25'),
        image_url: 'https://uploads8.wikiart.org/images/vincent-van-gogh.jpg!Portrait.jpg'
    )
    2.times do
        Painting.create!(
        name: Faker::Food.description,
        year_created: Faker::Date.between(from: '1700-09-23', to: '1940-09-25'),
        painting_inspiration: Faker::Lorem.sentences,
        painting_url: 'https://images-na.ssl-images-amazon.com/images/I/61vvPgDP7hL._AC_.jpg',
        artist: artist 
        )
    end
end
