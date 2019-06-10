require_relative 'app/dependencies/dependencies.rb'

library = Library.new

# 30.times { library.add_author(FFaker::Book.author) }
# 30.times do
#   library.add_reader(FFaker::Name.name,
#                      FFaker::Internet.email,
#                      FFaker::Address.city,
#                      FFaker::Address.street_name,
#                      FFaker::Address.building_number.to_i)
# end

# 30.times { library.add_book(FFaker::Book.title) }

# 30.times { library.take_book }

output = Output.new

output.show_top_readers
output.show_top_books(2)
output.show_reader_of_top_books
