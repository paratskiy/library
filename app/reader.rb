class Reader
  attr_reader :name, :email, :city, :street

  include Validating

  def initialize(name: '', email: '', city: '', street: '', house: '')
    valid_string?(name, email, city, street)
    valid_number?(house)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
