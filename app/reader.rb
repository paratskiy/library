require_relative 'dependencies/dependencies.rb'

class Reader
  attr_accessor :name, :email, :city, :street, :house, :number_of_books_taken

  def initialize(name, email, city, street, house)
    Validate.empty?(name, 'Name')
    Validate.string?(name, 'Name')
    Validate.empty?(email, 'Email')
    Validate.string?(email, 'Email')
    Validate.empty?(city, 'City')
    Validate.string?(city, 'City')
    Validate.empty?(street, 'Street')
    Validate.string?(street, 'Street')
    Validate.empty?(house, 'House')
    Validate.number?(house, 'House')
    Validate.positive?(house, 'House')

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end

reader = Reader.new('Gena', 'test@gmail.com', 'Dnipro', 'Street', 1)
reader2 = reader

puts reader == reader2
