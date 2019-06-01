# frozen_string_literal: true

require_relative 'dependencies/dependencies.rb'

# #
class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = Time.now)
    Validate.empty?(book, 'Book')
    Validate.is_instanse_of?(book, 'Book', Book)
    Validate.empty?(reader, 'Reader')
    Validate.is_instanse_of?(reader, 'Reader', Reader)

    @book = book
    @reader = reader
    @date = date
  end
end
