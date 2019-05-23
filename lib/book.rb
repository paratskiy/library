# frozen_string_literal: true

require_relative 'author.rb'

# #
class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end
