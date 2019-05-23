# frozen_string_literal: true

# #
class Author
  attr_accessor :name, :biography

  def initialize(name, biography = 'no biography')
    @name = name
    @biography = biography
  end
end
