class Reader
  attr_accessor :name, :email, :city, :street

  include Validating

  def initialize(name: '', email: '', city: '', street: '', house: '')
    valid_string?(name)
    valid_string?(email)
    valid_string?(city)
    valid_string?(street)
    valid_number?(house)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
