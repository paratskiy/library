# frozen_string_literal: true

require_relative 'dependencies/dependencies.rb'

# #
class Library
  attr_accessor :books, :orders, :readers, :authors, :library

  def initialize
    @library = Request.get('library.yml')
    @books = library[:books]
    @orders = library[:orders]
    @readers = library[:readers]
    @authors = library[:authors]
  end

  def add_book(title)
    book = Book.new(title, @authors.sample)
    @books.push(book)
    update_library
  end

  def add_reader(name, email, city, street, house)
    reader = Reader.new(name, email, city, street, house)
    @readers.push(reader)
    update_library
  end

  def add_author(name, biography = 'no biography')
    author = Author.new(name, biography)
    @authors.push(author)
    update_library
  end

  def update_library
    Request.add('library.yml', @library)
  end

  def take_book
    order = Order.new(@books.sample, @readers.sample, Time.now)
    @orders.push(order)
    Request.add('library.yml', library)
  end
end

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
# library.take_book
