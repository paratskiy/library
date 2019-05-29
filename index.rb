# frozen_string_literal: true

require_relative 'app/library.rb'

order = Order.new('book', 'reader', 'date')
author = Author.new('Mario Puzo')
reader = Reader.new('Reader', 'test@gmail.com', 'Dnipro', 'Street', 1)
book = Book.new('Godfather', author)

library = Library.new(book, order, reader, author)
# library.add_book('Godfather', Author.new('Mario Puzo'))
# library.add_book('The Wicher', Author.new('Anjey Sapkowski'))
# library.add_reader('Bogdan', 'test@gmail.com', 'Dnipro', 'Street', 1)
# library.add_author('Mario Puzo')
# library.add_author('Anjey Sapkowski')
# library.take_book(book, reader)
# library.take_book(book, reader)

library.show_top_reader
library.show_top_book(3)
library.show_number_of_readers_of_the_most_popular_books
