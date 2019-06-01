require_relative 'app/dependencies/dependencies.rb'

library = Library.new

# 30.times { library.add_author(Faker::Book.author) }
# 30.times do
#   library.add_reader(Faker::Name.name,
#                      Faker::Internet.email,
#                      Faker::Address.city,
#                      Faker::Address.street_name,
#                      Faker::Address.building_number.to_i)
# end

# 30.times { library.add_book(Faker::Book.title) }

# 30.times { library.take_book }

output = Output.new

# output.show_top_readers
# output.show_top_books(2)
# output.show_reader_of_top_books
