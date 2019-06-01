require_relative 'dependencies/dependencies.rb'

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
    order = Order.new(@books.sample, @readers.sample, date = DateTime.now)
    @orders.push(order)
    Request.add('library.yml', library)
  end
end
