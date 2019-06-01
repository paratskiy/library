require_relative 'dependencies/dependencies.rb'

class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = DateTime.now)
    Validate.empty?(book, 'Book')
    Validate.instanse_of?(book, 'Book', Book)
    Validate.empty?(reader, 'Reader')
    Validate.instanse_of?(reader, 'Reader', Reader)

    @book = book
    @reader = reader
    @date = date
  end
end
