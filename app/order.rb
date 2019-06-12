class Order
  attr_accessor :book, :reader, :date

  include Validate

  def initialize(book:, reader:, date: DateTime.now)
    empty?(book, 'Book')
    instance_of?(book, 'Book', Book)
    empty?(reader, 'Reader')
    instance_of?(reader, 'Reader', Reader)

    @book = book
    @reader = reader
    @date = date
  end
end
