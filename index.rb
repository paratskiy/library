require_relative 'app/dependencies/dependencies.rb'

library = Library.new

# library.add_author('Vasa')
# library.add_author('Petya')
# library.add_author('Alyosha')
# library.add_reader('Gena', 'test@gmail.com', 'Dnipro', 'Street', 1)
# library.add_reader('Akakiy', 'test@gmail.com', 'Dnipro', 'Street', 1)
# library.add_reader('Dazdraperma', 'test@gmail.com', 'Dnipro', 'Street', 1)
# library.add_book('Dozor')
# library.add_book('Potter')
# library.add_book('Billy Milligan')
library.take_book

output = Output.new

output.show_top_readers
# output.show_top_books(2)
# output.show_reader_of_top_books
