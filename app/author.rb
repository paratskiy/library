class Author
  attr_accessor :name, :biography

  include Validating

  def initialize(name: '', biography: 'no biography')
    valid_string?(name)
    @name = name
    @biography = biography
  end
end
