# frozen_string_literal: true

# #
class Reader
  attr_accessor :name, :email, :city, :street, :house, :number_of_books_taken

  def initialize(name, email, city, street, house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    @number_of_books_taken = 0
  end

  def insert_reader
    reader = { name: @name, email: @email, city: @city, street: @street, house: @house }
    data = Request.get('library.yml')
    data[:readers].push(reader)
    Request.add('library.yml', data)
  end

  def take_book
    @number_of_books_taken += 1
  end
end
