require_relative 'app/dependencies/dependencies.rb'

library = Library.new

# 30.times { library.add(Author, :authors, name: FFaker::Book.author) }

# 30.times do
#   library.add(Reader, :readers, name: FFaker::Name.name,
#                         email: FFaker::Internet.email,
#                         city: FFaker::Address.city,
#                         street: FFaker::Address.street_name,
#                         house: FFaker::Address.building_number.to_i)
# end

# 30.times { library.add(Book, :books, title: FFaker::Book.title, author: library.authors.sample) }

# 30.times { library.take_book }

# library.take_book
library.add(Author, :authors, name: FFaker::Book.author)
output = Output.new

output.show_top_readers
output.show_top_books(2)
output.show_reader_of_top_books
