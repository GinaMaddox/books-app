# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# books = Book.create(title: 'Eloquent Ruby', author: 'Russ Olsen', publisher: 'Addison-Wesley', genre: 'Education')
# books = Book.create(title: 'Mindset', author: 'Carol Dweck', publisher: 'Ballantine Books', genre: 'Psychology')

15.times do 
  book = Book.create(title: Faker::Book.title, author: Faker::Book.author, publisher: Faker::Book.publisher, genre: Faker::Book.genre)
end

#p Book.count
