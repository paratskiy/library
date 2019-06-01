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

  def take_book
    @number_of_books_taken += 1
  end
end

reader = Reader.new('Gena', 'test@gmail.com', 'Dnipro', 'Street', 1)
reader2 = reader

puts reader == reader2
