require_relative 'app/dependencies/dependencies.rb'

ENV['LIBRARY_EMPTY?'] = File.empty?('library.yml').to_s
ENV['LIBRARY_EXIST?'] = File.exist?('library.yml').to_s

Filling.filling_library if ENV['LIBRARY_EMPTY?'] == 'true' || ENV['LIBRARY_EXIST?'] == 'false'

Output.show_top_readers
Output.show_top_books(2)
Output.show_number_of_reader_of_top_books
