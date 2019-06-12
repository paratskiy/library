class Statistic

  @orders = Library.new.orders
  # names.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  def self.select_top_readers(count = 1)
    readers = @orders.map(&:reader)
    sorted_readers = readers.group_by(&:itself).transform_values(&:count).sort_by { |_reader, quantity| -quantity }
    sorted_readers.take(count)
  end

  def self.select_top_books(count = 1)
    books = @orders.map(&:book)
    sorted_book = books.group_by(&:itself).transform_values(&:count).sort_by { |_book, quantity| -quantity }
    sorted_book.take(count)
  end

  def self.select_reader_of_top_books(quantity = 3)
    most_popular_books = select_top_books(quantity)
    reader_of_the_most_popular_book = []
    most_popular_books.each do |book|
      @orders.each do |order|
        reader_of_the_most_popular_book.push(order.reader) if book.first == order.book
      end
    end
    reader_of_the_most_popular_book.uniq!
  end
end
