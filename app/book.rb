class Book
  attr_accessor :title, :author

  def initialize(title:, author:)
    Validate.empty?(title, 'Title')
    Validate.string?(title, 'Title')
    Validate.empty?(author, 'Author')
    Validate.instanse_of?(author, 'Author', Author)

    @title = title
    @author = author
  end
end
