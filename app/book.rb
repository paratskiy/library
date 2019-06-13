class Book
  attr_accessor :title, :author

  include Validating

  def initialize(title: '', author: '')
    valid_string?(title)
    valid_author?(author)

    @title = title
    @author = author
  end
end
