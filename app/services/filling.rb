class Filling
  LIBRARY = 'library.yml'.freeze

  def self.filling_library
    DbUtils.add(LIBRARY, books: [], authors: [], readers: [], orders: [])
    @library = Library.new

    fill_the_library_with_authors
    fill_the_library_with_readers
    fill_the_library_with_books
    fill_the_library_with_orders
  end

  def self.fill_the_library_with_authors
    30.times { @library.add(Author, :authors, name: FFaker::Book.author) }
  end

  def self.fill_the_library_with_readers
    30.times do
      @library.add(Reader, :readers, name: FFaker::Name.name,
                                     email: FFaker::Internet.email,
                                     city: FFaker::Address.city,
                                     street: FFaker::Address.street_name,
                                     house: FFaker::Address.building_number.to_i)
    end
  end

  def self.fill_the_library_with_books
    db = DbUtils.get(LIBRARY)
    30.times { @library.add(Book, :books, title: FFaker::Book.title, author: db[:authors].sample) }
  end

  def self.fill_the_library_with_orders
    30.times { @library.take_book }
  end
end
