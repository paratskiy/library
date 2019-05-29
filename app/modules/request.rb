# frozen_string_literal: true

require 'yaml'
# require_relative 'library.rb'

# #
module Request
  CONST = 10
  def self.add(db, hash)
    File.open(db, 'w') do |file|
      file.write(hash.to_yaml)
    end
  end

  def self.get(db)
    YAML.load_file(db)
  end
end
