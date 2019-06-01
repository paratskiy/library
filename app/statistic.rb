require_relative 'dependencies/dependencies.rb'

class Statistic < Library
  def select_top_readers(count = 1)
    readers = []
    orders.each { |order| readers.push(order.reader) }
    sorted_readers = readers.group_by(&:itself).transform_values(&:count).sort_by { |_reader, quantity| -quantity }
    sorted_readers.take(count)
  end

  def select_top_books(count = 1)
    books = []
    orders.each { |order| books.push(order.book) }
    sorted_book = books.group_by(&:itself).transform_values(&:count).sort_by { |_book, quantity| -quantity }
    sorted_book.take(count)
  end

  def select_reader_of_top_books(quantity = 3)
    most_popular_book = select_top_books(quantity)
    reader_of_the_most_popular_book = []
    most_popular_book.each do |book|
      orders.each do |order|
        reader_of_the_most_popular_book.push(order.reader) if book[0] == order.book
      end
    end
    reader_of_the_most_popular_book.uniq!
  end
end
