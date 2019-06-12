class Author
  attr_accessor :name, :biography

  include Validate

  def initialize(name:, biography: 'no biography')
    empty?(name, 'Name')
    string?(name, 'Name')
    @name = name
    @biography = biography
  end
end
