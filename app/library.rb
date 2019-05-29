# frozen_string_literal: true

require_relative 'book.rb'
require_relative 'reader.rb'
require_relative 'order.rb'
require_relative 'author.rb'

# #
class Library
  attr_accessor :book, :order, :reader, :author

  def initialize(book, order, reader, author)
    @book = book
    @order = order
    @reader = reader
    @author = author
  end

  def add_book(title, author)
    book = Book.new(title, author)
    book.insert_book
  end

  def add_reader(name, email, city, street, house)
    reader = Reader.new(name, email, city, street, house)
    reader.insert_reader
  end

  def add_author(name, biography = 'no biography')
    author = Author.new(name, biography)
    author.insert_author
  end

  def take_book(book, reader, date = Time.now)
    order = Order.new(book, reader, date)
    order.insert_order
    book.take_the_book
    reader.take_book
  end

  def show_top_reader(count = 1)
    top_reader = Order.select_top_reader(count)
    top_reader.each { |reader| puts reader.name }
  end

  def show_top_book(count = 1)
    top_book = Order.select_top_book(count)
    top_book.each { |book| puts book.title }
  end

  def show_number_of_readers_of_the_most_popular_books(some_quantity = 3)
    number_of_readers_of_the_most_popular_books = Order.select_number_of_readers_of_the_most_popular_books(some_quantity)
    number_of_readers_of_the_most_popular_books.each { |reader| puts reader.name }
  end
end
