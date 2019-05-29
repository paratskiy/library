# frozen_string_literal: true

# #
class Author
  attr_accessor :name, :biography

  def initialize(name, biography = 'no biography')
    @name = name
    @biography = biography
  end

  def insert_author
    author = { name: @name, biography: @biography }
    data = Request.get('library.yml')
    data[:authors].push(author)
    Request.add('library.yml', data)
  end

  def ==(other)
    if other.is_a? Reader
      @name == other.name
    else
      false
    end
  end
end
