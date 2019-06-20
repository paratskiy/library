class Library
  attr_reader :books, :orders, :readers, :authors, :library

  include Validating

  LIBRARY = 'library.yml'.freeze

  def initialize
    @library = DbUtils.get(LIBRARY)
  end

  def add(klass, entity, **arguments)
    found_entity?(library, entity)

    subject = klass.new(arguments)
    library[entity].push(subject)
    update_library
  end

  def update_library
    DbUtils.add(LIBRARY, library)
  end

  def take_book
    order = Order.new(book: books.sample, reader: readers.sample)
    orders.push(order)
    update_library
  end
end
