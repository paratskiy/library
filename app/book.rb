class Book
  attr_accessor :title, :author

  include Validate

  def initialize(title, author)
    empty?(title, 'Title')
    string?(title, 'Title')
    empty?(author, 'Author')
    instanse_of?(author, 'Author', Author)

    @title = title
    @author = author
  end
end
