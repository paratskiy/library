# frozen_string_literal: true

require_relative 'book.rb'
require_relative 'reader.rb'

# #
class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  def self.select_orders
    library = Request.get('library.yml')
    library[:orders]
  end

  def self.select_top_reader(count = 1)
    library = Request.get('library.yml')
    readers = []
    library[:orders].each { |order| readers.push(order[:reader]) }
    readers.sort_by!(&:number_of_books_taken)
    readers.take(count)
  end

  def self.select_top_book(count = 1)
    library = Request.get('library.yml')
    books = []
    library[:orders].each { |order| books.push(order[:book]) }
    books.uniq!(&:title)
    books.sort_by!(&:count_of_taken_the_book)
    books.reverse!
    books.take(count)
  end

  def self.select_number_of_readers_of_the_most_popular_books(some_quantity = 3)
    most_popular_books = select_top_book(some_quantity)
    orders = select_orders
    readers_of_the_most_popular_books = []
    orders.each do |order|
      most_popular_books.each do |book|
        readers_of_the_most_popular_books.push(order[:reader]) if book == order[:book]
      end
    end
    readers_of_the_most_popular_books.take(3)
  end
end
