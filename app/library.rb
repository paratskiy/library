class Library
  attr_accessor :books, :orders, :readers, :authors, :library

  LIBRARY = 'library.yml'.freeze

  def initialize
    @library = Request.get(LIBRARY)
    @books = library[:books]
    @orders = library[:orders]
    @readers = library[:readers]
    @authors = library[:authors]
  end

  def add(subject, **arguments)
    case subject
    when 'book'
      book = Book.new(arguments)
      @books.push(book)
    when 'reader'
      reader = Reader.new(arguments)
      @readers.push(reader)
    when 'author'
      author = Author.new(arguments)
      @authors.push(author)
    end
    update_library
  end

  def update_library
    Request.add(LIBRARY, @library)
  end

  def take_book
    order = Order.new(@books.sample, @readers.sample)
    @orders.push(order)
    update_library
  end
end
