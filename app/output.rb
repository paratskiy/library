class Output
  def self.show_top_readers(count = 1)
    top_readers = Statistic.new.select_top(:reader, count)
    top_readers.each { |reader| puts "Top reader is #{reader.first.name}" }
  end

  def self.show_top_books(count = 1)
    top_books = Statistic.new.select_top(:book, count)
    top_books.each { |book| puts "Top book is #{book.first.title}" }
  end

  def self.show_number_of_reader_of_top_books(quantity = 3)
    puts "Number of reader of top books is #{Statistic.new.select_reader_of_top_books(quantity)}"
  end
end
