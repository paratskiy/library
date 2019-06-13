class Order
  attr_accessor :book, :reader, :date

  include Validating

  def initialize(book: '', reader: '', date: DateTime.now)
    valid_book?(book)
    valid_reader?(reader)

    @book = book
    @reader = reader
    @date = date
  end
end
