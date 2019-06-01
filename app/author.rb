class Author
  attr_accessor :name, :biography

  def initialize(name, biography = 'no biography')
    @name = name
    @biography = biography
  end

  def ==(other)
    if other.is_a? Reader
      @name == other.name
    else
      false
    end
  end
end
