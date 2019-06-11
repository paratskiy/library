require_relative 'app/dependencies/dependencies.rb'

# library = Library.new

# 30.times { library.add('author', name: FFaker::Book.author) }

# 30.times do
#   library.add('reader', name: FFaker::Name.name,
#                         email: FFaker::Internet.email,
#                         city: FFaker::Address.city,
#                         street: FFaker::Address.street_name,
#                         house: FFaker::Address.building_number.to_i)
# end

# 30.times { library.add('book', title: FFaker::Book.title, author: library.authors.sample) }

# 30.times { library.take_book }

output = Output.new

output.show_top_readers
output.show_top_books(2)
output.show_reader_of_top_books
