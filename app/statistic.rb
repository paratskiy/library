class Statistic
  LIBRARY = 'library.yml'.freeze

  def initialize
    @orders = DbUtils.get(LIBRARY)[:orders]
  end

  def select_top(subject, count = 1)
    sorted_subject = @orders.group_by(&subject).sort_by { |_book, orders| -orders.count }
    sorted_subject.take(count)
  end

  def select_reader_of_top_books(quantity = 3)
    most_popular_books = select_top(:book, quantity)
    most_popular_books.flatten.delete_if { |element| element.is_a? Book }.group_by(&:reader).length
  end
end
