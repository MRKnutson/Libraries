# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Library.destroy_all


10.times do
  lib = Library.create(
    name: Faker::Address.community,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city, 
    state:Faker::Address.state
  )
  10.times do
    sect = lib.sections.create(
      genre: Faker::Book.genre
    )
    10.times do
      sect.books.create(
        title: Faker::Book.title, 
        author: Faker::Book.author
      )
    end
  end
end

# puts "seeding libraries"
# l1 = Library.create(name: Faker::Address.community, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state)
# l2 = Library.create(name: Faker::Address.community, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state)
# l3 = Library.create(name: Faker::Address.community, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state)
# l4 = Library.create(name: Faker::Address.community, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state)

# puts "seeding sections"
# s1 = l1.sections.create(genre: Faker::Book.genre)
# s2 = l1.sections.create(genre: Faker::Book.genre)
# s3 = l1.sections.create(genre: Faker::Book.genre)
# s4 = l1.sections.create(genre: Faker::Book.genre)

# s5 = l2.sections.create(genre: Faker::Book.genre)
# s6 = l2.sections.create(genre: Faker::Book.genre)
# s7 = l2.sections.create(genre: Faker::Book.genre)
# s8 = l2.sections.create(genre: Faker::Book.genre)

# s9 = l3.sections.create(genre: Faker::Book.genre)
# s10 = l3.sections.create(genre: Faker::Book.genre)
# s11 = l3.sections.create(genre: Faker::Book.genre)
# s12 = l3.sections.create(genre: Faker::Book.genre)

# s13 = l4.sections.create(genre: Faker::Book.genre)
# s14 = l4.sections.create(genre: Faker::Book.genre)
# s15 = l4.sections.create(genre: Faker::Book.genre)
# s16 = l4.sections.create(genre: Faker::Book.genre)

# puts "seeding books"
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s1.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s2.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s3.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s3.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s3.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s3.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s3.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s4.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s4.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s4.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s4.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s4.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s5.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s5.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s5.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s5.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s5.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s6.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s7.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s7.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s7.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s7.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s7.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s8.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s8.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s8.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s8.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s8.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s9.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s10.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s11.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s12.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s13.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s14.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s15.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)
# s16.books.create(title: Faker::Book.title, author: Faker::Book.author)