class Reader
  attr_accessor :name, :email, :city, :street

  include Validate

  def initialize(name:, email:, city:, street:, house:)
    empty?(name, 'Name')
    string?(name, 'Name')
    empty?(email, 'Email')
    string?(email, 'Email')
    empty?(city, 'City')
    string?(city, 'City')
    empty?(street, 'Street')
    string?(street, 'Street')
    empty?(house, 'House')
    number?(house, 'House')
    positive?(house, 'House')

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
