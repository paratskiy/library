# frozen_string_literal: true

require_relative 'book.rb'
require_relative 'reader.rb'
# require 'date'

# #
class Order
  attr_accessor :book, :reader, :date
  def initialize(book, reader, date = Time.now)
    @book = book
    @reader = reader
    @date = date
  end
end
