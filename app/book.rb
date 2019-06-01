require_relative 'dependencies/dependencies.rb'

class Book
  attr_accessor :title, :author, :count_of_taken_the_book

  def initialize(title, author)
    Validate.empty?(title, 'Title')
    Validate.string?(title, 'Title')
    Validate.empty?(author, 'Author')
    Validate.instanse_of?(author, 'Author', Author)

    @title = title
    @author = author
  end

  def ==(other)
    if other.is_a? Book
      @title == other.title
    else
      false
    end
  end
end
