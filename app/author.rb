class Author
  attr_accessor :name, :biography

  def initialize(name, biography = 'no biography')
    Validate.empty?(name, 'Name')
    Validate.string?(name, 'Name')
    @name = name
    @biography = biography
  end
end
