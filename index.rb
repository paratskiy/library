# frozen_string_literal: true

require_relative 'app/library.rb'

library = Library.new

library.show_top_reader
library.show_top_book(3)
library.show_number_of_readers_of_the_most_popular_books
