class Order
  attr_reader :book, :reader, :date

  include Validating

  def initialize(book: '', reader: '', date: DateTime.now)
    valid_instance?(Book, book)
    valid_instance?(Reader, reader)

    @book = book
    @reader = reader
    @date = date
  end
end
