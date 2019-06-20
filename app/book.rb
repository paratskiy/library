require_relative 'dependencies/dependencies.rb'

class Book
  attr_reader :title, :author

  include Validating

  def initialize(title: '', author: '')
    valid_string?(title)
    valid_instance?(Author, author)

    @title = title
    @author = author
  end
end

author = Author.new(name: 'sdfgsdfg')

book = Book.new(title: 'lalal', author: author)

