class Output < Statistic
  def show_top_readers(count = 1)
    top_readers = Statistic.new.select_top_readers(count)
    top_readers.each { |reader| puts "Top reader is #{reader.first.name}" }
  end

  def show_top_books(count = 1)
    top_books = Statistic.new.select_top_books(count)
    top_books.each { |book| puts "Top book is #{book.first.title}" }
  end

  def show_reader_of_top_books(quantity = 3)
    reader_of_top_books = Statistic.new.select_reader_of_top_books(quantity)
    reader_of_top_books.each { |reader| puts "Reader of top books is #{reader.name}" }
  end
end
